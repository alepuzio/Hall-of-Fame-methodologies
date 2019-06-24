#total script
#load library
library(dplyr)
#clean console
cat(c("\014"))
#google trends on methodologies
fileToRead = "D:/workspaceR/prove/hall-of-fame-methodologies/resources/week-search-about-software-development-methodologies.csv"
raw_week_data = read.table(header = TRUE, sep = ';', file = fileToRead)
#add ID column to dataframe
raw_week_data$ID <- seq.int(nrow(raw_week_data))

#control the data
#dim has to be 52X15
dim(raw_week_data)
#control the first 6 elements
head(raw_week_data)
#control the factors (qualitative fields)
factor(raw_week_data)
#control the names of the columns
colnames(raw_week_data)

#manage rownames
raw_methods_names = colnames(raw_week_data)
all_methods_names = toupper(raw_methods_names)

#remove the dates of methodologies from dataframe
raw_week_data_no_date = raw_week_data[-1]
#control the new names of the columns
colnames(raw_week_data_no_date)
#remove the ID of methodologies from dataframe
raw_week_data_only_number = raw_week_data_no_date[-14]

#retrieve names of methodologies
methods_names_no_weeks = all_methods_names[-1]
#control column number: it has be 14
length(methods_names_no_weeks)
#remove ID
methods_names = methods_names_no_weeks[-14]

#create new dataframe with median by columns
#ID <- raw_week_data_only_number[2,]
median_values <- apply(raw_week_data_only_number, 2, mean)

#control data
#ID
##numeric
class(median_values)
##13
length(median_values)
#colnames(ID)
##numeric
class(median_values)
##double
typeof(median_values)
attributes(median_values)
#13
length(median_values)

#sort data in ascending direction
median_values_ordered = sort(median_values, decreasing = FALSE)
#control data
str(median_values_ordered)
##min 23.5 max 87.5
summary(median_values_ordered)
#save data in hard disk
write.csv(
  median_values_ordered,
  paste(".\\resources\\output\\2018-19-medians-of-diffusion-of-software-development-methodologies.csv",sep = "")
)

#clean console
cat(c("\014"))

#change directory where it reads the elaborated data of google trends on methodologies
fileToRead=".\\resources\\output\\2018-19-medians-of-diffusion-of-software-development-methodologies.csv"
#BUG-1: move manually the file 
#that you create in previous step 
#and put it in directory

#read file
raw_median = read.csv(header =TRUE,  file = fileToRead)

raw_median
#change colnames in dataframe
colnames(raw_median) <- c("METHODOLOGY","TRAFFIC")
#delete ID field
raw_median_no_ID = raw_median[raw_median$METHODOLOGY!="ID",]
#delete empty value
raw_median_no_empty_values = raw_median_no_ID[raw_median_no_ID$METHODOLOGY!="",]

#delete useless methodologies :
raw_median_to_print = raw_median_no_empty_values[
  raw_median_no_empty_values$METHODOLOGY == "NOESTIMATES"|
    raw_median_no_empty_values$METHODOLOGY == "SCRUM"|
    raw_median_no_empty_values$METHODOLOGY == "KANBAN",]

#control data
##class: numeric
class(raw_median_to_print$TRAFFIC)
##print internal structure
str(raw_median_to_print$TRAFFIC)
#order data for better visualization
sort(raw_median_to_print$TRAFFIC)

numeric_vector = as.vector(raw_median_to_print$TRAFFIC)

class(raw_median_to_print$TRAFFIC)
class(numeric_vector)

#round
round_df <- function(x, digits){
  x <- round(x,digits)
  x
}

final_values = round_df(numeric_vector,2)
#print barplot
xx = barplot(final_values,
             args.legend = list(x = "topleft"),
             col = rainbow(3),
             legend.text=final_values,
             main="ANNUAL MEANS BETWEEN 2018 FEB AND 2019 JUN",
             names.arg=raw_median_to_print$METHODOLOGY,
             xlab="Methodology",
             ylab="Volume",
             ylim=c(0,100),
             width = 1
)


