#create new dataframe with median by columns
median_values <- apply(raw_week_data_only_number, 2, mean)

#control data of the dataframe
#ID
##numeric
class(median_values)
##13
length(median_values)
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

