# 19TRU PolSci Paper (No name yet)
# Cesar Renteria
# April 16th, 2019
# https://presupuestociudadano.jalisco.gob.mx/presupuesto

# Environment Setup ------------------------------------------------------------------
rm(list=ls()) # Clear Workspace
options(stringsAsFactors = FALSE)
#wd.dir    = "C:/Users/rente/Transversal-Presupuesto-Abierto/"
wd.dir    = "C:/Users/GioVanny/Documents/Transversal-Presupuesto-Abierto/"
wd.datos  = paste0(wd.dir, "/Presupuesto-Jalisco/")
wd.script = paste0(wd.dir, "/Limpieza-Datos/")
#wd.display= paste0(wd.dir, "/2_displays/")
#write.csv(egresos, paste0(wd.datos, "archivo.csv"))

# Packages
Packages <- c("haven", "tidyverse")
#install.packages(Packages)
lapply(Packages, library, character.only = TRUE)

#####################################################################################################
# Empezar la programacion aqui abajo.

egresos_2018 <-read_csv(paste0(wd.datos, "/2018-egresos-autorizado/egresos 2018.csv"))
egresos_2019 <-read_csv(paste0(wd.datos, "/2019-egresos-autorizado/egresos 2019.csv"))
egresos <-rbind(egresos_2018,egresos_2019)

ingresos_2018 <-read_csv(paste0(wd.datos,"/2018-ingresos-autorizado/Ingresos 2018.csv"))
ingresos_2019 <-read_csv(paste0(wd.datos,"/2019-ingresos-autorizado/Ingresos 2019.csv"))
ingresos <- rbind(ingresos_2018,ingresos_2019)


library(tidyverse)
library(viridis)
library(hrbrthemes)
library(fmsb)
library(colormap)
library(dplyr)
library(ggplot2)

#Collapse bases de egreso
egre19<-egresos_2019%>%
  group_by(up)%>%
  summarize(sum(importe))
  

egre18<-egresos_2018%>%
  group_by(up)%>%
  summarize(sum(importe))

egre<-rbind(egre18, egre19)
egre$mmdp<-egre$`sum(importe)`/1000000000

#Cambiar nombre de columnas
names(egre19)[2]<-"importe"
ggplot(data = unidades_presupuestales_18_19_20)+geom_col(mapping = aes(x=`up(2019)`, y=`resta19-18`))+scale_fill_brewer(palette = "Blues")

write.csv(egre18, paste0(wd.datos, "egre18.csv"))
write.csv(egre19, paste0(wd.datos, "egre19.csv"))



