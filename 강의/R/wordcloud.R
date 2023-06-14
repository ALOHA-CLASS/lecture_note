
# 
install.packages("wordcloud2")
library(wordcloud2)

str(demoFreq)
View(demoFreq)

wordcloud2(data=demoFreq,shape = "star")


#
text <- c("BTS", "한글", "Text", "Origin", "Download", "Test")
word_data <- table(text)
wordcloud2( word_data )


#
it_word <- c("AI","AI","AI","Big Data","Big Data","Big Data","Big Data","Artificial Intelligence", "Big Data", "Cloud Computing", "Cybersecurity", "Data Science","Machine Learning","Machine Learning","Machine Learning", "Machine Learning", "Internet of Things", "Blockchain", "Virtual Reality", "Augmented Reality", "Cryptocurrency", "Mobile App Development", "Web Development", "Network Security", "Robotics", "Data Privacy", "Software Engineering", "User Experience (UX)", "User Interface (UI)", "Digital Transformation", "Internet Security", "E-commerce", "Responsive Design", "Computer Vision", "DevOps", "Agile Methodology", "Deep Learning", "Natural Language Processing", "Edge Computing", "Fintech", "Cloud Storage", "Data Analytics", "Information Security", "Internet Service Provider (ISP)", "Mobile Security", "Wireless Networking", "Cloud Migration", "IT Infrastructure", "Software as a Service (SaaS)", "Platform as a Service (PaaS)", "Infrastructure as a Service (IaaS)", "Internet Protocol (IP)", "User Authentication", "Content Management System (CMS)", "API (Application Programming Interface)", "Data Mining", "Cyber Attack", "Backup and Recovery", "IT Consulting", "IT Project Management")
word_data <- table(it_word)
print(word_data)
str(word_data)
wordcloud2( word_data, size=0.3 )


#
test_word <- c("AI", "JAVA", "PYTHON", "R", "JS")
freq_count <- c(10, 5, 3, 2, 6)
word_data <- data.frame(word=test_word, freq=freq_count)

wordcloud2( word_data, size=0.2 )


#
prog_word <- c("Python", "Java", "JavaScript", "C", "C++", "C#", "R", "Ruby", "Go", "Swift", "PHP", "Perl", "Objective-C", "TypeScript", "Kotlin", "Scala", "Rust", "Lua", "Haskell", "Matlab", "Julia", "Groovy", "Shell", "VB.NET", "Delphi", "PL/SQL", "Ada", "Dart", "Lisp", "COBOL")
freq_count <- c(29, 92, 56, 14, 75, 63, 41, 83, 52, 19, 87, 9, 36, 61, 77, 44, 3, 96, 70, 11, 68, 25, 48, 32, 84, 59, 95, 5, 72, 50)
word_data <- data.frame(word=prog_word, freq=freq_count)

wordcloud2( word_data
            , size=0.2
            , fontFamily = "맑은 고딕"
            , color = "random-light"
            , backgroundColor = "black"
            , shape = "circle"
            )













