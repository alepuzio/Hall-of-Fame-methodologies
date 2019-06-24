#11-disegnare-gruppo-grafici
#par(mfcol=c(3,1), cex.axis=0.8, cex.lab=1)

plot(week_data_only_meth_to_print$WEEK,
     week_data_only_meth_to_print$NOESTIMATES,
     xlab="Weeks [t]",
     ylab="Volume [%]",
     main="#NOESTIMATES BETWEEN 2018 FEB AND 2019 MAY - Fig.1")

lines(week_data_only_meth_to_print$WEEK,
      week_data_only_meth_to_print$NOESTIMATES,
      col="red"
)

#KANBAN
plot(week_data_only_meth_to_print$WEEK,
     week_data_only_meth_to_print$KANBAN,
     xlab="Weeks [t]",
     ylab="Volume [%]",
     main="KANBAN BETWEEN 2018 FEB AND 2019 MAY - Fig. 2"
)
lines(week_data_only_meth_to_print$WEEK,
      week_data_only_meth_to_print$KANBAN,
      col="green"
)


#SCRUM
plot(week_data_only_meth_to_print$WEEK,
     week_data_only_meth_to_print$SCRUM,
     xlab="Weeks [t]",
     ylab="Volume [%]",
     main="SCRUM BETWEEN 2018 FEB AND 2019 MAY- Fig. 3"
)
lines(week_data_only_meth_to_print$WEEK,
      week_data_only_meth_to_print$SCRUM,
      col="blue"
)

