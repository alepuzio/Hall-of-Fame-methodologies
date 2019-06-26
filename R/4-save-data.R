#save data in hard disk
file.to.write <- ".\\output\\2018-19-means-of-diffusion-of-software-development-methodologies.csv"

write.csv(
  mean.values.ordered,
  paste(file.to.write, sep = "")
  )

