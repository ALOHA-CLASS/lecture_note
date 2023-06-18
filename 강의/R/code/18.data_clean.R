# 결측치 확인
x <- c(1, 2, NA, 4, 5)
x
result <- sum(x)  # NA 와 연산하면, 결과 NA
result
# is.na() 함수로 결측치 확인
is.na(x)

# 결측치 빈도 확인
table( is.na(x) )


# 결측치 제외하고 연산
x <- c(1, 2, NA, 4, 5)
x 
sum(x, na.rm = T)


# 데이터 세트에서 결측치 확인
is.na(airquality)

# 컬럼별 결측치 개수 확인
colSums(is.na(airquality))

# 컬럼별 결측치 개수 확인
sum(is.na(airquality))

# 결측치 행 제거하기
result <- na.omit(airquality)
result
sum(is.na(result))


# 결측치 대체하기
# airquality[is.na(airquality)] <- 0
result <- airquality
result[is.na(result)] <- 0
colSums(is.na(result))

# 이상치 확인
boxplot(mtcars$wt)

# 상자 그림의 기술통계량
boxplot(mtcars$wt)$stats

mtcars$wt > 5.25
mtcars$wt < 1.5130

# 이상치 판단 기준
1. (1사분위수) - 1.5(1~3사분위범위) 미만   
2. (3사분위수) + 1.5(1~3사분위범위) 초과   

# 2.5425 - 1.5(3.6500-2.5425)  = 
x <- 2.5425 - 1.5*(3.6500-2.5425)
x <- 3.6500 + 1.5*(3.6500-2.5425)
x

# 이상치를 결측 처리하기
cars_copy <- mtcars
cars_copy$wt <- ifelse(cars_copy$wt > 5.25, NA, cars_copy$wt)
cars_copy$wt
cars_copy$wt > 5.25












