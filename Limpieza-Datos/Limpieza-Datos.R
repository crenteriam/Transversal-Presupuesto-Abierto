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


egresos



<<<<<<< HEAD

x = left_join(objeto, egresos18, by = "up")

# Grafica 1. Genera una nueva variable en la que al año 2019 le restas el año 2018. Despues genera una grafica de barras
# donde los valores positivos esten en color azul y los valores negativos en rojo (si se puede)

# Grafica 2. Hacer la grafica Spyder
=======
>>>>>>> b7fb6c7e15d2f2bddf4f399ff51cbd9711c6a1ed
