
setwd("/Users/xucc/Documents/GMU/CS657/assigns/assign2")
mydata <- read.csv("ratings1.csv")
rows <- nrow(mydata)
head(mydata)

set.seed(0)

index03 <- sample(rows, 0.03*rows, replace = FALSE)
rating03 <- mydata[index03,]

index06 <- sample(rows, 0.06*rows, replace = FALSE)
rating06 <- mydata[index06,]

index09 <- sample(rows, 0.09*rows, replace = FALSE)
rating09 <- mydata[index09,]

index12 <- sample(rows, 0.12*rows, replace = FALSE)
rating12 <- mydata[index12,]

index2 <- sample(rows, 0.1*rows, replace = FALSE)
rating2 <- mydata[index2,]

index15 <- sample(rows, 0.15*rows, replace = FALSE)
rating15 <- mydata[index15,]

index18 <- sample(rows, 0.18*rows, replace = FALSE)
rating18 <- mydata[index18,]

index21 <- sample(rows, 0.21*rows, replace = FALSE)
rating21 <- mydata[index21,]

index24 <- sample(rows, 0.24*rows, replace = FALSE)
rating24 <- mydata[index24,]

index27 <- sample(rows, 0.27*rows, replace = FALSE)
rating27 <- mydata[index27,]









index4 <- sample(rows, 0.2*rows, replace = FALSE)
rating4 <- mydata[index4,]

index5 <- sample(rows, 0.25*rows, replace = FALSE)
rating25 <- mydata[index5,]

index6 <- sample(rows, 0.3*rows, replace = FALSE)
rating6 <- mydata[index6,]

index7 <- sample(rows, 0.7*rows, replace = FALSE)
rating7 <- mydata[index7,]

index8 <- sample(rows, 0.8*rows, replace = FALSE)
rating8 <- mydata[index8,]

index5 <- sample(rows, 0.5*rows, replace = FALSE)
rating5 <- mydata[index5,]

index6 <- sample(rows, 0.6*rows, replace = FALSE)
rating6 <- mydata[index6,]



write.csv(rating1, "rating1.csv", row.names = F)
write.csv(rating2, "rating2.csv", row.names = F)
write.csv(rating3, "rating3.csv", row.names = F)
write.csv(rating4, "rating4.csv", row.names = F)
write.csv(rating5, "rating5.csv", row.names = F)
write.csv(rating6, "rating6.csv", row.names = F)

write.csv(rating03, "rating03.csv", row.names = F)
write.csv(rating06, "rating06.csv", row.names = F)
write.csv(rating09, "rating09.csv", row.names = F)
write.csv(rating12, "rating12.csv", row.names = F)
write.csv(rating15, "rating15.csv", row.names = F)
write.csv(rating18, "rating18.csv", row.names = F)

write.csv(rating21, "rating21.csv", row.names = F)
write.csv(rating24, "rating24.csv", row.names = F)
write.csv(rating27, "rating27.csv", row.names = F)

