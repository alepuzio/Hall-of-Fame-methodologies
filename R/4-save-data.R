#save data in hard disk
#C:/repo-progetti-R/Hall-of-Fame-methodologies/
#..\\output\\2018-19-means-of-diffusion-of-software-development-methodologies.csv
file.to.write <- "C:\\repo-progetti-R\\Hall-of-Fame-methodologies\\output\\2018-19-means-of-diffusion-of-software-development-methodologies.csv"

write.csv(
  mean.values.ordered,
  paste(file.to.write, sep = "")
  )

