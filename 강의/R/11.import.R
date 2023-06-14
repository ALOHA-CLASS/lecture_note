# 원시 데이터 직접 입력
a <- c(1,2,3)
b <- c('a','b','c')
c <- c(TRUE, FALSE, TRUE)
data.frame( ID=a, NAME=b, YN=c )




# 엑셀 데이터 불러오기
install.packages("readxl")
library(readxl)
path <- "C:/KHM/R/code/sample/"

# col_names : 헤더 속성 여부
excel_data <- read_excel( paste0(path, "read_excel.xlsx"), col_names = FALSE)
str(excel_data)
mode(excel_data)

# 컬럼명 지정
names(excel_data) <- c("ID", "NAME")

View(excel_data)
print(excel_data)





# 공백으로 구분된 txt 파일 가져오기
path <- "C:/KHM/R/code/sample/"
txt_name <- paste0(path, "read_txt.txt")
txt_data <- read.table(txt_name, header=FALSE)
txt_data

# csv 파일 가져오기 - CSV(comma separated values)
path <- "C:/KHM/R/code/sample/"
csv_name <- paste0(path, "read_csv.csv")
csv_data <- read.table(csv_name, header=FALSE, sep = ",")
csv_data

# csv 파일 가져오기 2 - csv() 함수
path <- "C:/KHM/R/code/sample/"
file <- paste0(path, "read_csv.csv")
csv_data <- read.csv(file, header = FALSE)
View(csv_data)

# XML 파일 가져오기
install.packages("XML")
library(XML)
path <- "C:/KHM/R/code/source/"
file <- paste0(path, "data_ex.xml")
xml_data <- xmlToDataFrame(file)
View(xml_data)


# JSON 파일 가져오기
install.packages("jsonlite")
library(jsonlite)
path <- "C:/KHM/R/code/source/"
file <- paste0(path, "data_ex.json")
json_data <- fromJSON(file)
str(json_data)














