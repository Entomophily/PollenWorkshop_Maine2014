#  Understanding pollen and climate relationships.
#  Laura Russo

pollen=read.csv("Core_analysis/data/input/mpd_pollen.csv")
climate=read.csv("Core_analysis/data/input/mpd_climate.csv")

#why are there more rows in the pollen data than the climate data?
#pollen dataset has NAs

pollensub<-pollen[!is.na(pollen[,1]),]

#this removes NAs from the dataset

plot(y=pollensub$ULMUS,x=climate$papr)
plot(y=(pollensub$ULMUS/pollensub$POLLSUM),x=log(climate$papr,10),main="Brain",
     xlab="Log April Precipitation (mm)",ylab="Ulmus Proportion")

plot(y=(pollensub$ULMUS/pollensub$POLLSUM),x=climate$papr,main="Brain",
     xlab="April Precipitation (mm)",ylab="Ulmus Proportion",pch=19,
     col=rgb(0.1,0.1,0.1,0.1))

par(mfrow=c(1,2))
plot(y=(pollensub$ULMUS/pollensub$POLLSUM),x=climate$tjul,main="Brain",
     xlab="July Temperature",ylab="Ulmus Proportion",pch=19,
     col=rgb(0.1,0.1,0.1,0.1))

plot(y=(pollensub$ULMUS/pollensub$POLLSUM),x=climate$pjja,main="Brain",
     xlab="Summer Precipitation (mm)",ylab="Ulmus Proportion",pch=19,
     col=rgb(0.1,0.1,0.1,0.1))

#install.packages('analogue')
library(analogue)

plot(Location[,2],Location[,1])

has.brainz<-Pollen$ULMUS>0
has.brainz

points(Location$Longitude[has.brainz],Location$Latitude[has.brainz],col=2)
par(mfrow=c(1,1))


