# 19TRU PolSci Paper (No name yet)
# Cesar Renteria
# April 16th, 2019
# https://presupuestociudadano.jalisco.gob.mx/presupuesto

# Environment Setup ------------------------------------------------------------------
rm(list=ls()) # Clear Workspace
options(stringsAsFactors = FALSE)
wd.dir    = "C:/Users/rente/OneDrive/2019 Trust PolSci"
wd.clean  = paste0(wd.dir, "/1_data/clean/")
wd.script = paste0(wd.dir, "/3_scripts/")
wd.display= paste0(wd.dir, "/2_displays/")

# Packages
Packages <- c("haven", "tidyverse", "sjlabelled")
#install.packages(Packages)
lapply(Packages, library, character.only = TRUE)


# Vinculo para acceder a las bases de datos.
#  


# 1. Limpiar: Por Unidad Presupuestal - Unidad Responsable y Programa Presupuestario (usa el archivo programa-presupuestario-2018.csv)
# Y guardarla como .csv para el viernes

# hacer lo mismo para la base de datos 2019  (usa el archivo programa-presupuestario-2018.csv).
# para el lunes

# 3. Hacer eso para 2018 y 2019
# posteriormente combinar 2018 y 2018 en una sola base de datos y guargar en .csv
# para hacer el append, usa el comando rbind() o bind_row(). Son diferentes, pero hacen lo mismo. El que te sirva mas.
# para hacer el append, necesitas primero hacer una variable year para poner el año
# para el martes

#####################################################################################################
# Empezar la programacion aqui abajo.

egresos_2018 <-"Presupuesto-Jalisco/2018-egresos-autorizado/egresos 2018.csv"
egresos_2019 <-"Presupuesto-Jalisco/2019-egresos-autorizado/egresos 2019.csv"
egresos <-rbind(egresos_2018,egresos_2019)

ingresos_2018 <-"Presupuesto-Jalisco/2018-ingresos-autorizado/Ingresos 2018.csv"
ingresos_2019 <-"Presupuesto-Jalisco/2019-ingresos-autorizado/Ingresos 2019.csv"
ingresos <- rbind(ingresos_2018,ingresos_2019)




