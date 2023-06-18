# 엑셀 데이터 가져오기
install.packages("readxl")
library(readxl)
path <- "C:/KHM/R/code/source/"
file <- paste0(path, "entrance_exam.xls")
entrance_data <- read_excel(file)

# 데이터 구조 및 앞부분 확인
str(entrance_data)
head(entrance_data)
View(entrance_data)

# 변수명 영어로 변경
colnames(entrance_data) <- c("country", "JAN", "FEB", "MAR", "APR", "MAY", "JUN", "JUL", "AUG", "SEP", "OCT", "NOV", "DEC")

# 국가명 띄어쓰기 제거
entrance_data$country <- gsub(" ", "", entrance_data$country)
head(entrance_data)



# 국가 개수 확인
entrance_data |> nrow()

# 1월기준 상위 5개국 추출하기
# order(-entrance_data$JAN) : 1월 기준 내림차순
# |> head(n = 5)  :1월 기준 내림차순한 데이터의 상위 5개
top5_country <- entrance_data[order(-entrance_data$JAN),] |> head(n = 5)
top5_country


# 데이터 구조 재구조화하기
# - 열로 나열된 월별 데이터(JAN, FEB, ..)를 행으로 변환
install.packages("reshape2")
install.packages("stringi")
library(reshape2)
top5_melt <- melt(top5_country, id.vars='country', variable.name = 'mon')
head(top5_melt)


# 2020년 월별 입국자 수 - 선 그래프
install.packages("ggplot2")
library(ggplot2)
View(top5_melt)
ggplot(top5_melt, aes(x = mon, y = value, group = country)) + 
  geom_line(aes(color = country)) +
  ggtitle("2020년 국적별 입국자 수 변화 추이") +
  scale_y_continuous(breaks = seq(0, 50000, 50000))



# 2020년 월별 입국자 수 - 막대 그래프
install.packages("ggplot2")
library(ggplot2)
ggplot(top5_melt, aes(x = mon, y = value, fill = country)) + 
  geom_bar(stat = "identity", position = "dodge") +
  ggtitle("2020년 국적별 입국자 수 변화 추이") +
  scale_y_continuous(breaks = seq(0, 50000, 50000))



# 2020년 월별 입국자 수 - 누적 그래프
install.packages("ggplot2")
library(ggplot2)
ggplot(top5_melt, aes(x = mon, y = value, fill = country)) + 
  geom_bar(stat = "identity", position = "stack") +
  ggtitle("2020년 국적별 입국자 수 변화 추이") +
  scale_y_continuous(breaks = seq(0, 50000, 50000))
