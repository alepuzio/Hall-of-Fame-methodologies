#remove uselss columns - I'm interest in SCURM, KAnban, NOESTIMATES only
columns.to.elaborate <- c("KANBAN","SCRUM","NOESTIMATES")
raw.data.interesting <- raw.week.data.only.number[, (columns.to.elaborate)]
#control data
head(raw.data.interesting)


#create new dataframe with median by columns
median.values <- apply(raw.data.interesting, 2, median)

#create new dataframe with variance by columns
sd.values <- apply(raw.data.interesting, 2, sd)

foo <- data.frame(method = c("KANBAN","SCRUM","NOESTIMATES"),
                  means  = median.values,
                  sd     = sd.values)
#I read
#https://www.statmethods.net/advgraphs/parameters.html
#https://stackoverflow.com/questions/24626280/plot-mean-and-standard-deviation-by-category-in-r
plot(1:3, 
     foo$means, 
     pch   = 15, 
     xlab  = "Methodologies", 
     ylab  = "Volume",
     xaxt  = "n",
     xlim  = c( 0.5 , 3.5),
     ylim  = c( min ( foo$means - foo$sd ),
               max ((foo$means + foo$sd ))
             )
    )

lines(
    rbind(1:3, 1:3, NA), 
    rbind(foo$means - foo$sd,
          foo$means + foo$sd, 
          NA)
    )
axis(side = 1, 
     at = 1:3, 
     labels = foo$method
     )




