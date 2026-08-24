my_data <- read.csv("/Users/ak/Code/ainots/specds/ds1/R/MyData3.txt", sep = ";")
my_data$Education <- factor(my_data$Education, levels = c("Low", "Medium", "High"), ordered = TRUE)

my_data$Education[1] > my_data$Education[2] # TRUE — "High" > "Medium"
my_data[order(my_data$Education), ]         # сортировка по уровню, а не по алфавиту
