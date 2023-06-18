# 데이터 시각회
# ggplot2
# Grammar of Graphics Plot

install.packages("ggplot2")
library(ggplot2)

# 그래프 기본 틀 생성
ggplot(airquality, aes(x = Day, y = Temp))


# 산점도 그리기
ggplot(airquality, aes(x = Day, y = Temp)) + 
  geom_point()

ggplot(airquality, aes(x = Day, y = Temp)) + 
  geom_point(size = 3
           , color="blue"
           , shape=16
           , alpha=0.5           
           )


# 선 그래프 그리기
ggplot(airquality, aes(x = Day, y = Temp)) + 
  geom_line() +
  

ggplot(airquality, aes(x = Day, y = Temp)) + 
  geom_line(size = 0.5
           ,linetype=1
           ,color=2
           ,alpha=0.9)



# 산점도 + 선 그래프
ggplot(airquality, aes(x = Day, y = Temp)) + 
  geom_point(color="red", size=2) +
  geom_line(color="black") 


# 막대 그래프
ggplot(mtcars, aes(x = cyl)) +
  geom_bar()

ggplot(mtcars, aes(x = cyl)) +
  geom_bar(width = 1.5
          ,fill = c("red","green","blue")
          ,color = "black"
          )

# 누적 막대 그래프
ggplot(mtcars, aes(x = factor(cyl))) +
  geom_bar(aes(fill = factor(gear)))


# 선버스트 차트 
ggplot(mtcars, aes(x = factor(cyl))) +
  geom_bar(aes(fill = factor(gear))) +
  coord_polar()

# 선버스트 차트 - 도넛 모양
ggplot(mtcars, aes(x = factor(cyl))) +
  geom_bar(aes(fill = factor(gear)), 
           color="blue") +
  coord_polar(theta = "y")


# 상자 그림 그래프
ggplot(airquality, aes(x = Day, y = Temp, group=Day) ) +
  geom_boxplot()

ggplot(airquality, aes(x = Day, y = Temp, group=Day) ) +
  geom_boxplot( width=1
               ,fill="lightblue"
               ,color="blue"
               ,outlier.shape = 2
               ,outlier.color = "red")



# 히스토그램 
ggplot(airquality, aes(Temp) ) +
  geom_histogram()



ggplot(airquality, aes(Temp) ) +
  geom_histogram( color ="white"
                 ,binwidth = 2
                 ,center = T)





# economics - 경제 주요 지표 정보
# economics 데이터 세트
# - date : 날짜
# - pce : 개인 소비 지출
# - pop : 인구 수
# - psavert : 개인 저축률
# - uemped  : 실업자 중간 기간(실업기간의 중간값)
# - unemploy : 실업자 수

# 그래프에 사선 그리기
library(ggplot2)
ggplot( economics, aes( x = date, y = psavert )) +
  geom_line() +
  geom_abline(intercept = 12.18, slope = -0.0005444
              ,color = "red")  # 추세선


# 평행선
library(ggplot2)
# 개인 저축률의 평균치를 평행선으로 추가
ggplot( economics, aes( x = date, y = psavert )) +
  geom_line() +
  geom_hline(yintercept = mean(economics$psavert)
             ,color = "red")


# 수직선
library(dplyr)
library(ggplot2)
# 개인 저축률의 최솟값이 나온 기간을 수직선으로 추가
min_date <- filter(economics, psavert == min(economics$psavert) )$date
min_date

ggplot( economics, aes( x = date, y = psavert )) +
  geom_line() +
  geom_vline(xintercept = min_date
             ,color = "red")


# 사선, 평행선, 수직선
ggplot( economics, aes( x = date, y = psavert )) +
  geom_line() +
  geom_abline(intercept = 12.18, slope = -0.0005444
              ,color = "red") +
  geom_hline(yintercept = mean(economics$psavert)
             ,color = "green") +
  geom_vline(xintercept = min_date
             ,color = "blue")


# 라벨 입력하기
library(ggplot2)

ggplot(airquality, aes(x = Day, y = Temp)) +
  geom_point() +
  geom_text( aes(label = Temp), vjust=0, hjust=0 )


# 도형 넣기
ggplot(mtcars, aes(x = wt, y = mpg)) +
  geom_point() +
  annotate(("rect"), xmin=3, xmax=4, ymin=12, ymax=21
                   , fill="lightblue")


# 화살표 넣기
ggplot(mtcars, aes(x = wt, y = mpg)) +
  geom_point() +
  annotate(("rect"), xmin=3, xmax=4, ymin=12, ymax=21
           , fill="lightblue") +
  annotate(("segment"), x = 2.5, xend = 3.7, y = 10, yend = 17
           , color = "red", arrow = arrow()) +
  annotate("text", x = 2.5, y = 10, label = "point") +
  labs( x = "무게", y = "연비", title = "자동차 무게와 연비 상관관계") +
  theme_light()
  

ggplot( economics, aes( x = date, y = psavert )) +
  geom_line() +
  geom_abline(intercept = 12.18, slope = -0.0005444
              ,color = "red") +
  geom_hline(yintercept = mean(economics$psavert)
             ,color = "green") +
  geom_vline(xintercept = min_date
             ,color = "blue")


# 이동 평균선
install.packages("dplyr")
install.packages("ggplot2")
install.packages("zoo")

library(dplyr)
library(ggplot2)
library(zoo)

# 이동평균 함수 : zoo 패키지, rollmean() 함수
# * k       : 평균 기간 개월수
# * fill    : 결측치를 대체할 값

# 12개월 이동평균
economics_avg <- economics %>% 
  mutate(avg = zoo::rollmean(psavert, k = 12, fill=NA))
# 10년 이동평균
economics_avg2 <- economics_avg %>% 
  mutate(avg2 = zoo::rollmean(psavert, k = 120, fill=NA))


ggplot( economics_avg2, aes( x = date, y = psavert )) +
  geom_line() +
  geom_line( aes(y = avg), color="red", size=1) +
  geom_line( aes(y = avg2), color="blue", size=1) 











