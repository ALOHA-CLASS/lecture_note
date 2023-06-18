# ggmap 패키지 설치 및 로드
install.packages("ggmap")
library(ggmap)

# API 키 등록
api_key <- "AIzaSyDa_9XcZixmykF2y95JyJCZravaIvqdPPU"
register_google(key = api_key)

# 지역 이름으로 지도 가져오기 
seoul <- get_googlemap("seoul", maptype="roadmap") 
# 위도 경도로 지도 가져오기
x <- c(lon=127, lat=37.6)
seoul <- get_googlemap(x, maptype="roadmap") 

# 지도 시각화
ggmap(seoul)

# 위도 : 37.6  경도: 127.
geocode("seoul")

# "영등포역" 
library(ggmap)
library(dplyr)
library(ggplot2)
api_key <- "AIzaSyDa_9XcZixmykF2y95JyJCZravaIvqdPPU"
register_google(key = api_key)

# 영등포역 위도, 경도
geo_code <- geocode("영등포역")
geo_data <- as.numeric(geo_code) # 숫자형 벡터로 변환
geo_data


# 영등포역 위치
ydp <- get_googlemap("영등포역", maptype="roadmap", zoom = 17) 
ydp

ggmap(ydp) + 
  geom_point(data = geo_code, aes(x = geo_code$lon, y = geo_code$lat)
            , color = "red", size = 10, shape = 'triangle')


# 서울특별시 영등포구 영등포동
address <- "서울특별시 영등포구 영등포동"
start_location <- geocode(address)

address2 <- "서울특별시 영등포구 여의도동"
end_location <- geocode(address2)

df <- data.frame(
  lon = c(start_location$lon, end_location$lon),
  lat = c(start_location$lat, end_location$lat)
)


map <- get_map(location = c(start_location$lon, start_location$lat,
                            end_location$lon, end_location$lat), zoom=13)

ggmap(map) +
  geom_path(data = df, aes(x = lon, y = lat), color="red", size=3) +
  geom_point(data = start_location,
             aes( x = start_location$lon, y = start_location$lat )
             , size=7, color="blue") +
  geom_point(data = start_location,
             aes( x = end_location$lon, y = end_location$lat )
             , size=7, color="green")
  
  














