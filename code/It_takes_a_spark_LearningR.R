############################ Loading the data ##########################
data <- read.table("https://raw.githubusercontent.com/shaziaruybal/2022-05-04-It-takes-a-spark/master/data/Data.txt",
                   header = T,
                   stringsAsFactors = T)
View(data)

############################ Data explorations #########################
data$Firstname
data$Class
data$Age

############################ Plot #########################
# Plot Age vs Weight
plot(x = data$Age, y = data$Weight,xlab="Age",ylab="Weight")
# Plot Class vs Age
plot(x = data$Class, y = data$Age,xlab="Class",ylab="Age")

##################### Summarize data #########################
summary(data$Sex)
summary(data$Sickness)

summary(data$Age)

############################ Barplot #########################
## Barplot of the total number of each sex
barplot(summary(data$Sex), main="Sex")

## Barplot of the total number of sick
barplot(summary(data$Sickness), main="Sickness")

############################ Pie charts #########################
## Plot the proportions of chills for sick and healthy 
par(mfrow=c(1,2)) # 1 row and 2 columns for sick and healthy categories
pie(table(data$chills[data$Sickness=="Y"]), xlab="Sick", main="Chills")
pie(table(data$chills[data$Sickness=="N"]), xlab="Healthy", main="Chills")


##################### EXTRA CODE #######################################

############# Apply some color filter on the plot ######################
# Plot Age vs Weight and add a different color for male
plot(data$Age, data$Weight,xlab="Age",ylab="Weight")
# Define male
Male<-data$Sex=="M"
# Add a different color for male
points(data$Age[Male], data$Weight[Male],pch=16, col="steelblue")

## Plot Temperature vs Weight and add a different color for sick
plot(data$Temperature, data$Weight,xlab="Temperature",ylab="Weight")
# Define sick
Sick<-data$Sickness=="Y"
# Add a different color for sick students
points(data$Temperature[Sick], data$Weight[Sick],pch=16, col="red")
