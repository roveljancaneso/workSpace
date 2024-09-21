#Num1
seq1 <- -5:5
seq1
x <- 1:7
x

#Num2
seq2 <- seq(1, 3, by = 0.2)
seq2

#Num3
workers <- list(34, 28, 22, 36, 27, 18, 52, 39, 42, 29, 35, 31, 27, 22, 37, 34, 19, 20, 57, 49, 50,  37, 46, 25, 17, 37, 43, 53, 41, 51, 35, 24,33, 41, 53, 40, 18, 44, 38, 41, 48, 27, 39, 19, 30, 61, 54, 58, 26, 18)
print(paste(workers[[3]], "is the value of the 3rd element"))
print(paste(workers[[2]], "is the 2nd element and", workers[[4]], "is the 4th element"))
exclude <- workers[-c(4, 12)]
exclude

#Num4
x <- c("first" = 3, "second" = 0, "third" = 9)
x
names(x)
x[c("first", "third")]

#Num5
x <- c(-3:2)
x
x[2] <- 0
x

#Num6
mrCruzdata <- data.frame(
  Month = c("Jan", "Feb", "Mar", "Apr", "May", "Jun"),
  Price_Per_Liter = c(52.50, 57.25, 60.00, 65.00, 74.25, 54.00),
  Purchase_Quantity = c(25, 30, 40, 50, 10, 45)
)
mrCruzdata
avr_fuel <- weighted.mean(mrCruzdata$Price_Per_Liter, mrCruzdata$Purchase_Quantity)
print(paste("Mr. Cruz avarage fuel expenditure is", avr_fuel))

#Num7
rivers
data <- c(length(rivers), sum(rivers), mean(rivers), median(rivers), var(rivers), sd(rivers), min(rivers), max(rivers))
datf <- data.frame(
  DATA = c("Length", "Sum", "Mean", "Median", "Variance", "Std.Dvn.", "Minimum", "Maximum"),
  VALUE = data
)
datf

#Num8
power_ranking <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25)
celebrity_name <- c("Tom Cruise", "Rolling Stones", "Oprah Winfrey", "U2", "Tiger Woods", "Steven Spielberg", "Howard Stern", "50 Cent", "Cast of the Sopranos", "Dan Brown", "Bruce Springsteen", "Donald Trump", "Muhammad Ali", "Paul McCartney", "George Lucas", "Elton John", "David Letterman", "Phil Mickelson", "J.K. Rowling", "Bradd Pitt", "Peter Jackson", "Dr. Phil McGraw", "Jay Leno", "Celine Dion", "Kobe Bryant")
pay <- c(67, 90, 225, 110, 90, 332, 302, 41, 52, 88, 55, 44, 55, 40, 233, 34, 40, 47, 75, 25, 39, 45, 32, 40, 31)
power_ranking
celebrity_name
pay
celebrity_name[19] <- "J.K. Rowling"
power_ranking[19] <- 15
pay[19] <- 90
power_ranking
celebrity_name
pay
forbes_data <- read.csv("PowerRanking.csv")
forbes_data[10:20, ]

#Num9
library(openxlsx)
vienna <- read.xlsx("hotels-vienna.xlsx")
dim(vienna)
selcol <- vienna[, c("country", "neighbourhood", "price", "stars", "accommodation_type", "rating")]
save(selcol, file = "new.RData")
load("new.RData")
head(selcol)
tail(selcol)

#Num10
veg <- list("Kangkong", "Papaya", "Sayote", "Okra", "Kalabasa", "Pechay", "Talong", "Ampalaya", "Sitaw", "Malunggay")
veg
veg <- append(veg, list("Labanos", "Patatas"))
veg
veg <- append(veg, list("Tawgi", "Lettuce", "Repolyo", "Pipino"), after = 5)
veg
veg <- veg[-c(5, 10, 15)]
veg