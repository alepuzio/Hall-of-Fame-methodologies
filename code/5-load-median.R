#clean console
cat(c("\014"))

#change directory where it reads the elaborated data of google trends on methodologies
#fileToRead = "D:/workspaceR/prove/hall-of-fame-methodologies/resources/2018-19-medians-of-diffusion-of-software-development-methodologies.csv"
fileToRead=".\\resources\\output\\2018-19-medians-of-diffusion-of-software-development-methodologies.csv"
#BUG-1: move manually the file 
#that you create in previous step 
#and put it in directory

#read file
raw_median = read.csv(header = FALSE,  file = fileToRead)

raw_median