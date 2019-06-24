#clean console
cat(c("\014"))
#google trends on methodologies: change filetoRead with your working directory
file.to.read = "D:/workspaceR/prove/hall-of-fame-methodologies/resources/week-search-about-software-development-methodologies.csv"
raw.week.data = read.table(header = TRUE, sep = ';', file = file.to.read)
#add ID column to dataframe
raw.week.data$ID <- seq.int(nrow(raw.week.data))

