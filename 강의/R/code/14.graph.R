# 막대 그래프 
library(readxl)
path <- "C:/KHM/R/code/source/"
file <- paste0(path, "Sample1.xlsx")
ex_data <- read_excel(file)
print(ex_data)
View(ex_data)

# 빈도 분포를 구하는 함수
# table() : 데이터세트의 빈도 분포를 구하는 함수
dist_area <- table(ex_data$AREA)

# 막대 그래프
barplot(dist_area)

# 막대 그래프 옵션
barplot(dist_area, ylim=c(0,10)
                 , main="지역별 인구수"
                 , xlab="지역"
                 , ylab="인구수")

# 막대 그래프 색상
barplot(dist_area, col=c("pink","lightgreen","lightblue") )



# 상자 그림
library(readxl)
path <- "C:/KHM/R/code/source/"
file <- paste0(path, "Sample1.xlsx")
ex_data <- read_excel(file)
View(ex_data)
print(ex_data)

# 상자 그림 그래프 출력
boxplot(ex_data$Y21_CNT, ex_data$Y20_CNT)


# 상자 그림 - 옵션
boxplot(ex_data$Y21_CNT, ex_data$Y20_CNT
        , ylim = c(0,60) 
        , main = "20~21년 이용건수"
        , names = c("21년건수", "20년건수")
        , col = c('pink','lightblue')
        
        )


boxplot(mtcars$wt)$stats


# 히스토그램
library(readxl)
path <- "C:/KHM/R/code/source/"
file <- paste0(path, "Sample1.xlsx")
ex_data <- read_excel(file)

# 히스토그램 출력
hist(ex_data$AGE)


# 히스토그램 옵션
hist(ex_data$AGE, main = "나이"
                , xlim = c(0, 60)
                , ylim = c(0, 10)
                , breaks = 5
     )
# breaks  : 구간의 경계 개수 지정







# 파이 차트
library(readxl)
path <- "C:/KHM/R/code/source/"
file <- paste0(path, "Sample1.xlsx")
ex_data <- read_excel(file)

dist_area <- table(ex_data$AREA)

# 백분율(%) 구하기
names <- c('경기','서울','제주')
values <- round(dist_area / sum(dist_area) * 100)
labels <- paste0(names, "(", values, "%)")
labels

pie(dist_area
    ,col=c('pink','lightblue', 'lightgreen')
    ,border=c('red','blue', 'green')
    ,cex=2
    ,main='지역별 인구수'
    ,labels=labels
    ,clockwise = T
    ,init.angle = 90  
    # clockwise = T, 기본각도 = 90
    # clockwise = F, 기본각도 = 0
    # init.angle 은 반시계로 회전
    )





# 줄기 잎 그림
x <- c(15, 17, 22, 26, 35, 36, 42, 46, 46, 51, 54, 59)
stem( x )             # scale = 1 이 기본값

# scale : 줄기의 개수; 데이터 나누는 구간
# 10~14 | 15~19
# 20~24 | 25~29
# ...
stem( x, scale = 2 )


# 산점도 그래프
iris
# 꽃받침의 세로 길이
x <- iris$Sepal.Length

# 꽃잎의 가로 길이
y <- iris$Petal.Width

plot(x = x, y = y
     , xlab = "꽃받침 세로"
     , ylab = "꽃잎 가로"
     , main = "꽃받침과 꽃잎 길이의 상관관계"
     , sub = "꽃받침이 길면 꽃잎이 길어진다"
     )

# 산점도 행렬
View(iris)
pairs(iris)



# psych 패키지로 산점도 행렬
install.packages("psych")
library(psych)
pairs.panels(iris)

# 히스토그램          : 구간별 분포
# 곡선 그래프         : 구간별 분포
# 밀도 그래프(타원)   
# 산점도

# 상관관계, 대칭성, 이상치 파악 


help(pairs.panels)














































