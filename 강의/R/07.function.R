# 내장 함수 사용
print("Hello R~!")

a <- sum(1:100)
a <- sum(1,2,3,4,5)
print(a)

Sys.Date()    # 오늘 날짜 출력


# 사용자 정의 함수 생성
multi_sum <- function(x, y, z) {
  result <- x + y + z
  return(result)         # 결과값을 반환
  #cat(result)           # 결과값을 출력만
}

x <- multi_sum(10, 20, 30)
print(x)








