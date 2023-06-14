# readxl 패키지 설치
install.packages("readxl")
library(readxl)
path <- "C:/KHM/R/code/source/"
excel_data <- read_excel( paste0(path, "data_ex.xlsx"))
print(excel_data)
View(excel_data)


# readxl 패키지 삭제
remove.packages("readxl")
