data_text <- "FirstName;LastName;Education;Age;Salary
Evgeny;Onegin;High;26;100
Vladimir;Lensky;Medium;18;200
Tatyana;Larina;Low;16;300"

my_data <- read.csv(text = data_text, sep = ";")
my_data$Education <- factor(my_data$Education, levels = c("Low", "Medium", "High"), ordered = TRUE)

my_data$Education[1] > my_data$Education[2] # TRUE — "High" > "Medium"
my_data[order(my_data$Education), ]         # сортировка по уровню, а не по алфавиту
