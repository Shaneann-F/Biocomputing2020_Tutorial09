##Shaneann Fross
##Exercise 07 from tutorial 10/09/2020

##Load the data from iris.csv
setwd("/Users/Shaneann/Desktop/data-shell/Biocomputing2020_Tutorial09")
iris=read.csv(file="iris.csv", header=TRUE, stringsAsFactors=FALSE) 

#1. 
#Have a head function like Linux and print to the consul
x <- iris #Can change "iris" to be whatever file you read in
fileLines <- iris[1:6,] #Can change the numbers to be however many you want to call from the beginning of the file
fileLines

#2. 
##Print the last 2 rows in the last 2 columns of iris.csv
twoRowsAndColumns <- iris[c(149:150),c(4:5)]
twoRowsAndColumns

##Get the number of observations for each species in the data set
#Count lines with each of the species name. First make a table, then count the number of rows for the species which the table is made for. 
setosaTable <- iris[iris[,5] == "setosa",]
setosaCount <- nrow(setosaTable)
versicolorTable <- iris[iris[,5] == "versicolor",]
versicolorCount <- nrow(versicolorTable)
virginicaTable <- iris[iris[,5] == "virginica",]
virginicaCount <- nrow(virginicaTable)

#Make a table or print to the console the number of observations
print("The number of setosa observations is:",setosaCount)
print("The number of versicolor observations is:",versicolorCount)
print("The number of virginica observations is:",virginicaCount)

#Get rows with Sepal.Width > 3.5
sepalWidth <- iris[iris$Sepal.Width > 3.5,]

#Make setosa.csv file for all setosa species data
write.table(setosaTable, "setosaTable.csv", row.names=TRUE, sep=",")

#Calculate mean, minimum, and maximum of Petal.Length for virginica observations
meanVirginica <- mean(virginicaTable$Petal.Length)
minVirginica <- min(virginicaTable$Petal.Length)
maxVirginica <- max(virginicaTable$Petal.Length)
