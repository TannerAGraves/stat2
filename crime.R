library(readr)
Crimes <- read_csv("crimedata.csv", )

Crimes <- read.csv("C:/Users/Tanner/Documents/R/crimes.csv",na.strings = c("NA", "?", "<ca>com"))
X <- cbind(1, Crimes[,6:129])
X.y <- cbind(1, Crimes[,6:147])
y <- cbind(1, Crimes[,130:147])
feature.names = colnames(X)
#covariate analysis
cor_matrix <- cor(X)
na_count <- apply(X, 2, function(col) sum(is.na(col)))

print(na_count)

X <-as.matrix(X)
feature.names