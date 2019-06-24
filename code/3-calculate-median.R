#create new dataframe with median by columns
median.values <- apply(raw.week.data.only.number, 2, mean)

#control data of the dataframe
#ID
##numeric
class(median.values)
##13
length(median.values)
##double
typeof(median.values)
attributes(median.values)
#13
length(median.values)

#sort data in ascending direction
median.values.ordered = sort(median.values, decreasing = FALSE)
#control data
str(median.values.ordered)
##min 23.5 max 87.5
summary(median.values.ordered)

