print("Hello R~!")

help()

x <-10
x <- c(1,2,3)
x <- c(1:10)

x <- seq(1,20,by=2)
x <- seq(1,20)


x <- c(1:18)
y <- matrix( x, nrow=2, ncol=9, byrow=TRUE )
array( y, dim=c(2,3,3) )


a <- list( 1,2,3,'a','b','c' )




a <- c(1,2,3)
b <- c('a','b','c')
c <- c(TRUE,FALSE,TRUE)
data.frame( a, b, c )



# 엑셀 데이터 불러오기
install.packages("readxl")
library("readxl")
excel_data <- read_excel("C:/ALOHA/human/lecture/R/code/sample/read_excel.xlsx")
View(excel_data)


# 탭으로 구분된 TXT 파일 가져오기
file_path <- "C:/ALOHA/human/lecture/R/code/sample/read_txt.txt"
file_path <- "C:/ALOHA/human/lecture/R/code/sample/read_csv.csv"
ex_data <- read.table(file_path, header = FALSE, sep = ",")  
View(ex_data)
save(ex_data, file= "C:/ALOHA/human/lecture/R/code/sample/sample.rda")

# csv 파일 저장하기
x <- c(1, 2, 3, 4, 5)
y <- c("A", "B", "C", "D", "E")
DATA <- data.frame(ID = x, NAME = y)
write.csv(DATA, file="C:/ALOHA/human/lecture/R/code/sample/write_csv.csv")




# csv 파일 저장하기
x <- c(1, 2, 3, 4, 5)
y <- c("A", "B", "C", "D", "E")
DATA <- data.frame(ID = x, NAME = y)
write.table(DATA, file="C:/ALOHA/human/lecture/R/code/sample/write_txt.txt")



# 데이터 파악 함수
path <- "C:/ALOHA/human/lecture/R/code/sample/"
library(readxl)
ex_data <- read_excel(paste0(path,"apt_list.xlsx"))
View(ex_data)


# str()
str(ex_data)


# dim()
dim(ex_data)


# 변수명 변경
install.packages("dplyr")
library(dplyr)
path <- "C:/ALOHA/human/lecture/R/code/sample/"
library(readxl)
ex_data <- read_excel(paste0(path,"apt_list.xlsx"))
upd_data <- rename(ex_data, sido=시도, sigungu=시군구, bjd=법정동)
View(upd_data)

# writexl 패키지 설치
install.packages("writexl")
# writexl 패키지 로드
library(writexl)
write_xlsx(upd_data, path=paste0(path,"apt_list_eng.xlsx"))


#
x <- c(1, 2, 3, 4, 5)
y <- c("A", "B", "C", "D", "E")
DATA <- data.frame(ID = x, NAME = y)
write_xlsx(DATA, path="C:/ALOHA/human/lecture/R/code/sample/ttt.xlsx") 


#
a <- c(1,2,3)
b <- c(2,2,2)
DATA <- data.frame(A = a, B = b)
DATA$C <- DATA$A + DATA$B
View(DATA)


#
a <- c(1,2,3)
b <- c(2,2,2)
DATA <- data.frame(A = a, B = b)
DATA$C <- DATA$A + DATA$B
DATA$D <- ifelse(DATA$C %% 2 == 1, "홀수", "짝수")
View(DATA)


#
library(dplyr)
library(readxl)
path <- "C:/ALOHA/human/lecture/R/textbook/source/"
ex_data <- read_excel(paste0(path,"data_ex.xlsx"))  
ex_data <- ex_data %>% select("ID")
ex_data <- ex_data %>% select("ID","SEX","AGE","AREA")
View

#
library(dplyr)
library(readxl)
path <- "C:/ALOHA/human/lecture/R/textbook/source/"
ex_data <- read_excel(paste0(path,"data_ex.xlsx"))  
ex_data <- ex_data %>% filter(AREA == '서울')
ex_data <- ex_data %>% filter(AREA == '서울' & AGE >= 30)
View(ex_data)


#

library(dplyr)
library(readxl)
path <- "C:/ALOHA/human/lecture/R/textbook/source/"
ex_data <- read_excel(paste0(path,"data_ex.xlsx"))  
ex_data <- ex_data %>% arrange(AGE)
View(ex_data)
ex_data <- ex_data %>% arrange(desc(AGE))
View(ex_data)

#
ex_data <- ex_data %>% arrange(desc(AGE), AREA)
View(ex_data)




#
library(dplyr)
library(readxl)
path <- "C:/ALOHA/human/lecture/R/textbook/source/"
ex_data <- read_excel(paste0(path,"Sample1.xlsx"))  
View(ex_data)

#
ex_data <- rename(ex_data, Y17_AMT=AMT17)
ex_data %>% summarise(TOT_Y17_AMT = sum(Y17_AMT))
ex_data %>% group_by(AREA) %>% summarise(SUM_Y17_AMT = sum(Y17_AMT))



#
library(readxl)
path <- "C:/ALOHA/human/lecture/R/textbook/source/"
m_history <- read_excel(paste0(path, "Sample2_m_history.xlsx"))
f_history <- read_excel(paste0(path, "Sample3_f_history.xlsx"))
View(m_history)
View(f_history)
ex_data <- bind_rows(m_history, f_history)
View(ex_data)



#
library(readxl)
path <- "C:/ALOHA/human/lecture/R/textbook/source/"
jeju_y17_history <- read_excel(paste0(path, "Sample4_y17_history.xlsx"))
jeju_y16_history <- read_excel(paste0(path, "Sample5_y16_history.xlsx"))
View(jeju_y17_history)
View(jeju_y16_history)

bind_inner_join <- inner_join(jeju_y17_history, jeju_y16_history, by = "ID")
bind_left_join <- left_join(jeju_y17_history, jeju_y16_history, by = "ID")
bind_right_join <- right_join(jeju_y17_history, jeju_y16_history, by = "ID")
bind_full_join <- full_join(jeju_y17_history, jeju_y16_history, by = "ID")

View(bind_inner_join)
View(bind_left_join)
View(bind_right_join)
View(bind_full_join)
                                                


#
install.packages("descr")
library(descr)
library(readxl)
path <- "C:/ALOHA/human/lecture/R/textbook/source/"
ex_data <- read_excel(paste0(path, "Sample1.xlsx"))
freq_data <- freq(ex_data$AREA, plot = F)
freq_data <- freq(ex_data$AREA)
freq_data
