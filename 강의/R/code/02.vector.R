# 숫자형 벡터 생성
ex_vector <- c(-1, 0, 1)
ex_vector

# 숫자형 벡터 속성, 길이
mode(ex_vector)     # 데이터 유형 반환
str(ex_vector)      # 데이터 유형,범위,값을 반환
length(ex_vector)   # 데이터 개수 반환
typeof(ex_vector)   # 데이터 유형 반환


# 문자형 벡터 생성
ex_vector <- c("A","B","C")
ex_vector

# 논리형 벡터 생성
ex_vector <- c(TRUE, FALSE, TRUE, FALSE)
ex_vector


# 범주형 데이터 생성
ex_vector <- c(2, 1, 3, 2, 1)
# factor(범주화할 자료, labels = c("범주1", "범주2", ...))
# 2,1,3,2,1 와 같은 범주화할 자료를
# "A", "B", "C", 로 순서대로 매핑하여 범주형 데이터로 생성
# 1   2   3
# A   B   C
# Levels : 범주
cate_vector <- factor(ex_vector, labels = c("A", "B", "C"))
cate_vector







