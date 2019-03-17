#change colnames in dataframe
colnames(raw_median) <- c("METHODOLOGY","TRAFFIC")
#delete ID field
raw_median_no_ID = raw_median[raw_median$METHODOLOGY!="ID",]
#delete empty value
raw_median_no_empty_values = raw_median_no_ID[raw_median_no_ID$METHODOLOGY!="",]

#delete methodology under the thresold:
##I want the NOESTIMATES data
##I want only RAD in waterfall methdologies
##I want only the most famous Agile methodologies (aka median >70)
raw_median_to_print = raw_median_no_empty_values[as.vector(raw_median_no_empty_values$TRAFFIC) > 70 |
                                                   as.vector(raw_median_no_empty_values$TRAFFIC) < 24
                                                 | raw_median_no_empty_values$METHODOLOGY =="XP",]
#control data
##class: numeric
class(raw_median_to_print$TRAFFIC)
##print internal structure
str(raw_median_to_print$TRAFFIC)
#order data for better visualization
sort(raw_median_to_print$TRAFFIC)
numeric_vector = as.vector(raw_median_to_print$TRAFFIC)
