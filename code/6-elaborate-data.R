#change colnames in dataframe
colnames(raw.median) <- c("METHODOLOGY","TRAFFIC")
#delete ID field
raw.median.no.ID = raw.median[raw.median$METHODOLOGY!="ID",]
#delete empty value
raw.median.no.empty.values = raw.median.no.ID[raw.median.no.ID$METHODOLOGY!="",]

#delete methodology under the thresold:
##I want the NOESTIMATES data
##I want only the most famous Agile methodologies (aka SCRUM and KANBAN)


raw.median.to.print = raw.median.no.empty.values[
  raw.median.no.empty.values$METHODOLOGY == "NOESTIMATES"|
    raw.median.no.empty.values$METHODOLOGY == "SCRUM"|
    raw.median.no.empty.values$METHODOLOGY == "KANBAN",]

#control data
##class: numeric
class(raw.median.to.print$TRAFFIC)
##print internal structure
str(raw.median.to.print$TRAFFIC)
#order data for better visualization
sort(raw.median.to.print$TRAFFIC)
numeric.vector = as.vector(raw.median.to.print$TRAFFIC)
