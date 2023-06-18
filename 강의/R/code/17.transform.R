# 데이터 구조 변형

# melt()
install.packages("reshape2")
library(reshape2)

head(airquality)

# 변수명을 소문자로 변환
names(airquality) <- tolower( names(airquality) )
head(airquality)

# 열을 행으로 변환
melt_text <- melt(airquality) 
# 기준열 지정을 하지 않은 경우
# variable 변수명에 열 정보를 행으로 넣어준다

head(melt_text)
View(melt_text)

# 기준 행을 지정하여 변형
# id.vars         : 기준 열 지정하는 옵션
# measure.vars    : 행으로 변형하여 출력한 값
melt_text2 <- melt(airquality, id.vars=c('month','wind')
                             , measure.vars = 'ozone')

head(melt_text2)


# cast()
# acast() : 행을 열로 변형하는 함수, (반환-백터,행렬,배열)
# dcast() : 행을 열로 변형, 데이터 프레임으로 반환
library(reshape2)
# month, day 기준으로 변수들을 열->행으로 변형
aq_melt <- melt(airquality, id.vars = c('month', 'day')
                          , na.rm = FALSE)
head(aq_melt)

# month, day 기준으로 데이터 행 -> 열로 변형
aq_dcast <- dcast(aq_melt, month + day ~ variable)
head(aq_dcast)



# 일별 월별 variable별로 일/월 행렬 변형, variable ->차원 으로 변형
# 배열(array)로 출력
acast( aq_melt, day ~ month ~ variable )



                



















