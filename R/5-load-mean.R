#clean console
cat(c("\014"))

#change directory where it reads the elaborated data of google trends on methodologies
file.to.Read <- ".\\output\\2018-19-means-of-diffusion-of-software-development-methodologies.csv"

#read file
raw.mean <- read.csv(header = FALSE,  file = file.to.Read)
#print values
raw.mean