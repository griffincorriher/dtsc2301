library(haven) # Installs package needed for read_dta
data <- read_dta("anes_timeseries_2016.dta") # Reads ANES timeseries
dimensions <- dim(data) # Creates variable for dimensions
numvars <- dimensions[2] # Gets number of variables
respondents <- dimensions[1] # Gets number of respondents

age <- subset(data, select = c(368))
mean(age$V161267)
median(age$V161267)

male <- sum(data$V161342 == 1)
female <- sum(data$V161342 == 2)
other <- sum(data$V161342 == 3)
total <- sum(male,female,other)
percentagefemale <- female/total

income <- data$V161361x
table(income)

# Find midpoint of each range and multiply that by the frequency
# divide the sum of all m * f and divide by sum of all f
