#10-time series con ts


#da stackoverfloe plotting time series with date on x axis
#save data in hard disk
write.csv(
  week_data_only_meth_to_print,
  paste(".\\week_data_only_meth_to_print.csv",sep = ";")
)


colnames(week_data_only_meth_to_print)
only_meth_to_print <- week_data_only_meth_to_print[c(2,3,4)]

dati <- ts(data = 
             only_meth_to_print,
           frequency = 12,
           start=c(2018, 5, 4),
           end=c(2019, 4, 24))
dati

plot(dati,
     lwd=1,
     col = "red",
     main="Volume search [%]"
      )
