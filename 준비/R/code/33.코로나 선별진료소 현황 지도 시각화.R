# 엑셀 데이터 가져오기
install.packages("readxl")
library(readxl)
path <- "C:/KHM/R/code/source/"
file <- paste0(path, "선별진료소_현황.xls")
clinic_data <- read_excel(file)

# 필요한 컬럼만 추출하기
data_raw <- clinic_data[,c(2:5)]     # 2~5열의 모든행 선택
head(data_raw)

# 데이터 추출 확인 및 컬럼명 변경
names(data_raw)
names(data_raw) <- c("state", "city", "name", "addr")
names(data_raw)


# 지역별(state) 선별 진료소 빈도 분석
table(data_raw$state)

# 지역별(state) 선별 진료소 빈도 - 막대 그래프
barplot(table(data_raw$state))

# 대전시 선별 진료소 빈도
daejeon_data <- data_raw[data_raw$state == "대전",]
head(daejeon_data)
nrow(daejeon_data)



# 대전시 선별 진료소 위도,경도 가져오기
install.packages("ggmap")
library(ggmap)
ggmap_key <- "AIzaSyDa_9XcZixmykF2y95JyJCZravaIvqdPPU"
register_google(ggmap_key)

daejeon_data <- mutate_geocode(data = daejeon_data, location = addr, source = 'google')
head(dajeon_data)
View(dajeon_data)
head(dajeon_data$lon)
head(dajeon_data$lat)


# 대전시 선별 진료소 지도 시각화 - 산점도로 표시
dajeon_map <- get_googlemap('대전', maptype = 'roadmap', zoom = 11)
ggmap(dajeon_map) +
  geom_point(data = daejeon_data,
             aes(x = lon, y = lat, color = factor(name)), size = 3)


# 대전시 선별 진료소 지도 시각화 - 구글 마커로 표시
daejeon_data_marker <- data.frame(daejeon_data$lon, daejeon_data$lat)
dajeon_map <- get_googlemap('대전', maptype = 'roadmap', zoom = 11, markers = daejeon_data_marker)

ggmap(dajeon_map) +
  geom_text(data = daejeon_data, aes(x = lon, y = lat),
            size = 3, label = daejeon_data$name)





