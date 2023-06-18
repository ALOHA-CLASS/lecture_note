# R 데이터 저장하기
## 함수 : save(데이터셋, file="파일경로")
path <- "C:/KHM/R/code/sample/"
file <- paste0(path, "read_csv.csv")
ex_data <- read.csv(file)

path <- "C:/KHM/R/code/export/"
file <- paste0(path, "sample.rda")
save(ex_data, file = file)

# R 데이터 불러오기
path <- "C:/KHM/R/code/export/"
file <- paste0(path, "sample.rda")
load(file)



# CSV 파일 저장하기
## 함수 : write.csv(데이터셋, file="파일경로")
x <- c(1,2,3,4,5)
y <- c("A","B","C","D","E")
DATA <- data.frame(ID = x, NAME = y)
path <- "C:/KHM/R/code/export/"
file <- paste0( path, "write_csv.csv")
write.csv(DATA, file=file)


# txt 파일 저장하기
## 함수 : write.table(데이터셋, file="파일경로")
x <- c(1,2,3,4,5)
y <- c("A","B","C","D","E")
DATA <- data.frame(ID = x, NAME = y)
path <- "C:/KHM/R/code/export/"
file <- paste0( path, "write_txt.txt")
write.table(DATA, file=file)



# 엑셀 파일 저장하기
install.packages("writexl")
library(writexl)

x <- c(1,2,3,4,5)
y <- c("A","B","C","D","E")
DATA <- data.frame(ID = x, NAME = y)

path <- "C:/KHM/R/code/export/"
file <- paste0( path, "write_excel.xlsx")
write_xlsx(DATA, path=file)
  

# XML 파일 저장하기
install.packages("XML")
library(XML)

df <- data.frame(
    Name = c("이명박", "박근혜", "문재인", "윤석열"),
    Age = c(81, 71, 70, 63),
    Country = c("충북", "대전", "경남", "서울")
)

# 데이터프레임 -> XML 태그로 변환
xml_data <- newXMLNode("Root")  # <Root></Root> 생성

for( i  in 1:nrow(df) ) {
  row_node <- newXMLNode("Row")   # <Row></Row>  생성  
  for( j in 1:ncol(df) ) {
    col_name <- names(df)[j]        # df의 속성 1번
    col_value <- df[i,j]            # df의 1행 1열의 값
    col_node <- newXMLNode(col_name, col_value)   # <Name>이명박</Name>생성
    row_node <- addChildren(row_node, col_node)   # <Row><Name>이명박</Name></Row>
  }
  xml_data <- addChildren(xml_data, row_node) # <Root> <Row> ..  </Root>
}
xml_data

path <- "C:/KHM/R/code/export/"
file <- paste0( path, "write_xml.xml")

saveXML(xml_data, file)










# JSON 파일 저장하기
install.packages("jsonlite")  
library(jsonlite)

list_data <- list(
    name = "김휴먼",
    age = 30,
    country = "천안",
    hobbies = c("JAVA", "PYTHON", "AI")
)

json_data <- toJSON(list_data) # 리스트를 json 으로 변환
json_data

path <- "C:/KHM/R/code/export/"
file <- paste0( path, "write_json.json")

write_json(json_data, file)






























