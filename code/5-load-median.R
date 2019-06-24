#clean console
cat(c("\014"))

#change directory where it reads the elaborated data of google trends on methodologies
fileToRead=".\\resources\\output\\2018-19-medians-of-diffusion-of-software-development-methodologies.csv"

#read file
raw_median = read.csv(header = FALSE,  file = fileToRead)

raw_median