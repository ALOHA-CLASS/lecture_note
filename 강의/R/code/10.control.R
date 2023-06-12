# 조건문
a <- 10
if( a %% 2 == 1 ) {
  print("홀수입니다.")
} else {
  print("짝수입니다.")
}


# 반복문
for( i in 1:10 ) {
  a <- 2*i-1
  print(a)
}

# apply() 함수
x <- matrix(1:4, 2, 2)
x

apply(x, 1, sum)  # 행렬 x의 행 기준 합계
apply(x, 2, sum)  # 행렬 x의 열 기준 합계


a <- c(1,2,3,4,5,6)
# 2행 2열 3차원 배열 생성
x <- array(a ,dim=c(2,2,3))
x
# 2X2 3차원 배열 x의 행 기준 합계
apply(x, 1, sum)


# 내장 데이터 세트
# iris : 150x50, 꽃 잎/받침 정보
str(iris)

View(iris)

# lapply()
lapply( iris[, 1:4], sum )  # 1~4열 각각의 합계


# sapply()
sapply( iris[, 1:4], mean)  # 1~4열 각각의 평균











