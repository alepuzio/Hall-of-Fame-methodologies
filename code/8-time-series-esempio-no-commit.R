#8-timeserie

data(AirPassengers)
class(AirPassengers)
#inizio della serie
start(AirPassengers)
#fine della serie
end(AirPassengers)

#12 mesi a ciclo temporale
frequency(AirPassengers)

summary(AirPassengers)

#grafico base tempo-numero passeggeri
plot(AirPassengers)

#la serie segue una linea retta
abline(reg=lm(AirPassengers ~ time(AirPassengers)))

