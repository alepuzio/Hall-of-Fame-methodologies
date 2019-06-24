#create new dataframe with mean by columns
mean.values <- apply(raw.week.data.only.number, 2, mean)

#control data of the dataframe
#ID
##numeric
class(mean.values)
##13
length(mean.values)
##double
typeof(mean.values)
attributes(mean.values)
#13
length(mean.values)

#sort data in ascending direction
mean.values.ordered = sort(mean.values, decreasing = FALSE)
#control data
str(mean.values.ordered)
##min 23.5 max 87.5
summary(mean.values.ordered)

