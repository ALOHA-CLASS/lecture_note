# 엑셀 파일 가져오기
install.packages("readxl")
library(readxl)
path <- "C:/KHM/R/code/source/"
file <- paste0(path, "forest_example_data.xls")
forest_data <- read_excel(file)

# 변수명 변경
colnames(forest_data) <- c("name", "city", "gubun", "area", "number", "stay", "city_new", "code", "codename")

# 데이터 구조 및 앞부분 확인
str(forest_data)
head(forest_data)


# 시도별 휴양림 빈도분석 - freq() 함수
library(descr)
freq(forest_data$city, plot = T, main = 'city')



# 시도별 휴양림 빈도분석 - table() 함수
city_table <- table(forest_data$city)
city_table
barplot(city_table)


# 시도별 휴양림 수 구하고 내림차순 정렬하기
install.packages("dplyr")
library(dplyr)
count(forest_data, city) %>% arrange(desc(n))


# 시도별, 소재지_시도명, 제공기관명 별로 분포 확인하기
library(dplyr)
count(forest_data, city) %>% arrange(desc(n))
count(forest_data, city_new) %>% arrange(desc(n))
count(forest_data, codename) %>% arrange(desc(n))
