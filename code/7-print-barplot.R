#print barplot
xx = barplot(raw_median_to_print$TRAFFIC,
             args.legend = list(x = "topleft"),
             col = rainbow(6),
             legend.text=raw_median_to_print$TRAFFIC,
             main="ANNUAL MEDIANS BETWEEN MAR 2018 AND FEB 2019",
             names.arg=raw_median_to_print$METHODOLOGY,
             xlab="Methodology",
             ylab="Volume [%]",
             ylim=c(0,100),
             width = 1
)

