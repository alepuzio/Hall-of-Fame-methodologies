#clean console
cat(c("\014"))
#google trends on methodologies: change filetoRead with your working directory
fileToRead = "D:/workspaceR/prove/hall-of-fame-methodologies/resources/week-search-about-software-development-methodologies.csv"
raw_week_data = read.table(header = TRUE, sep = ';', file = fileToRead)
#add ID column to dataframe
raw_week_data$ID <- seq.int(nrow(raw_week_data))

