# 데이터 구조 확인
str(iris)


# 데이터 세트의 행, 열 확인
ncol(iris)
nrow(iris)
dim(iris)


# 데이터 세트 컬럼명 확인
ls(iris)

# 데이터 앞부분 확인
head(iris, n = 3)

# 데이터 뒷부분 확인
tail(iris, n = 3)
     

# 꽃받침 세로 길이 - 통계
# 평균
mean(iris$Sepal.Length)     # 5.843333
mean(iris$Petal.Length)     # 3.758

# 중앙값
median(iris$Sepal.Length)   # 5.8
median(iris$Petal.Length)   # 4.35

# 최솟값
min(iris$Sepal.Length)      # 4.3

# 최댓값
max(iris$Sepal.Length)      # 7.9

# 범위
range(iris$Sepal.Length)    # 4.3 7.9

# 사분위수 
quantile(iris$Sepal.Length) # 4.3  5.1  5.8  6.4  7.9 

# 분산, 표준편차
var(iris$Sepal.Length)      # 0.6856935
sd(iris$Sepal.Length)       # 0.8280661


# 첨도, 왜도
install.packages("psych")
library(psych)

kurtosi(iris$Sepal.Length)  # 첨도 : -0.6058125

# 꽃받침의 왜도
skew(iris$Sepal.Length)     # 왜 도 : 0.3086407
skew(iris$Sepal.Width)      # 왜 도 : 0.3126147

# 꽃잎의 왜도
skew(iris$Petal.Length)     # 왜 도 : -0.2694109
skew(iris$Petal.Width)      # 왜 도 : -0.1009166

# 왜도 
# i) 왜도 > 0   : 0.3086407
#    평균 : 5.843333, > 중앙값 : 5.8

# ii) 왜도 < 0   : -0.2694109
#    평균 : 3.758, < 중앙값 : 4.35





# 빈도 분석
install.packages("descr")
library(descr)

freq_data <- freq(iris$Sepal.Length)
freq_data <- freq(iris$Sepal.Length, plot = F)
freq_data

# 빈도 분석
library(readxl)
path <- "C:/KHM/R/code/source/"
file <- paste0( path, "Sample1.xlsx")
ex_data <- read_excel(file)
ex_data

freq( ex_data$AREA
      , ylim=c(0,10)
      , xlab="지역", ylab="빈도"
      , main="지역별 인구수"
      )


help("freq")


















