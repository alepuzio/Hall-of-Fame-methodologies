#8-2-par-hist
par(mfrow=c(1,3))
hist(raw.data.interesting$KANBAN, col = "red", main = "KANBAN", xlab = "VOLUME VALUES", ylim = c(0, 40))
hist(raw.data.interesting$SCRUM, col = "green", main = "SCRUM", xlab = "VOLUME VALUES", ylim = c(0, 40))
hist(raw.data.interesting$NOESTIMATES, col = "blue", main = "NOESTIMATES", xlab = "VOLUME VALUES", ylim = c(0, 40))


#barplot(prop.table(table(raw.data.interesting )))                              
#head(barplot(prop.table(table(raw.data.interesting))))
#class(raw.data.interesting)
#barplot(t(as.matrix(raw.data.interesting)), beside=TRUE)
#histout = apply(raw.data.interesting, 2, hist)
#with(raw.data.interesting, hist(SCRUM))
