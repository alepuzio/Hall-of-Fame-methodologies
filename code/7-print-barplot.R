
#print barplot
xx = barplot(raw.mean.to.print$TRAFFIC,
             args.legend = list(x = "topleft"),
             col = rainbow(3),
             legend.text = raw.mean.to.print$TRAFFIC,
             main = "ANNUAL MEANS BETWEEN 2018 FEB AND 2019 JUN",
             names.arg = raw.mean.to.print$METHODOLOGY,
             xlab = "Methodology",
             ylab = "Volume",
             ylim = c(0,100),
             width = 1
)

