#save data in hard disk
file.to.write = ".\\resources\\output\\2018-19-medians-of-diffusion-of-software-development-methodologies.csv"

write.csv(
  mean.values.ordered,
  paste(file.to.write, sep = "")
  )

