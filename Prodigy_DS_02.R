setwd("C:/Users/mural/OneDrive/Desktop/SEM 5/INT234")
data <- read.csv("titanic_data.csv")
str(data)
summary(data)
sum(is.na(data))
View(data)
colSums(is.na(data))

data$Age[is.na(data$Age)] <- mean(data$Age, na.rm = TRUE)
data <- data[!is.na(data$Embarked), ]
data <- data[!is.na(data$Fare), ]

data$Sex <- factor(data$Sex)
data$Embarked <- factor(data$Embarked, levels = c("C", "Q", "S"), labels = c("Cherbourg", "Queenstown", "Southampton"))
data$Survived <- factor(data$Survived, levels = c(0, 1), labels = c("No", "Yes"))
data$Pclass <- as.factor(data$Pclass
str(data)

library(ggplot2)
#Survival rate by Gender
ggplot(data, aes(x = Sex, fill = Survived)) +
  geom_bar(position = "dodge") +
  labs(title = "Survival Rate by Gender")
#Distribution of Passengers Ages
ggplot(data, aes(x = Age)) +
  geom_histogram(binwidth = 10, fill = "Violet", alpha = 0.8) +
  labs(title = "Distribution of Passenger Ages", x = "Age", y = "Count")
#Survival rate by Passenger class
ggplot(data, aes(x = Pclass, fill = Survived)) +
  geom_bar(position = "dodge") +
  labs(title = "Survival Rate by Passenger Class", x = "Passenger Class", y = "Count")

summary(data)
