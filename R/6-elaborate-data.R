#change colnames in dataframe
colnames(raw.mean) <- c("METHODOLOGY","TRAFFIC")
#delete ID field
raw.mean.no.ID <- raw.mean[raw.mean$METHODOLOGY!="ID", ]
#delete empty value
raw.mean.no.empty.values  <-  raw.mean.no.ID[raw.mean.no.ID$METHODOLOGY != "", ]

#delete methodology under the thresold:
##I want the NOESTIMATES data
##I want only the most famous Agile methodologies (aka SCRUM and KANBAN)


raw.mean.to.print <- raw.mean.no.empty.values[
  raw.mean.no.empty.values$METHODOLOGY == "NOESTIMATES" |
    raw.mean.no.empty.values$METHODOLOGY == "SCRUM" |
    raw.mean.no.empty.values$METHODOLOGY == "KANBAN", ]

#control data
##class: numeric
class(raw.mean.to.print$TRAFFIC)
##print internal structure
str(raw.mean.to.print$TRAFFIC)
#order data for better visualization
sort(raw.mean.to.print$TRAFFIC)
numeric.vector <- as.vector(raw.mean.to.print$TRAFFIC)
