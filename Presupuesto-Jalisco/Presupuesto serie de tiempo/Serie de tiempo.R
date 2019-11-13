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
Packages <- c("haven", "tidyverse","dplyr", "ggplot2", "hrbrthemes")
#install.packages(Packages)
lapply(Packages, library, character.only = TRUE)
--------------------------------------------------------------------------------------------------
Presupuesto <- read_csv("Presupuesto-Jalisco/Presupuesto serie de tiempo/Presupuesto.csv")
View(Presupuesto)
#Gráfica valor nominal
ggplot(Presupuesto, aes(x=year, y=`monto(mdp)`))+geom_line(color="dark blue")+geom_point()+xlab("Presupuesto a través del tiempo")+ylab("Millones de pesos")+theme_ipsum()+theme(axis.text.x=element_text(angle=60, hjust=1))+scale_y_continuous(labels=function(x) format(x, big.mark = ","))+theme(axis.text.x=element_text(size=11, angle=90,hjust=0.95,vjust=0.2))+geom_point(shape=21,fill="dark blue", color="black", size=6)+ggtitle("El presupuesto a través del tiempo. Valor nominal")
#Gráfica valor real
ggplot(Presupuesto, aes(x=year, y=`monto_real(mdp)`))+geom_line(color="steel blue")+geom_point()+xlab("Presupuesto a través del tiempo")+ylab("Millones de pesos")+theme_ipsum()+theme(axis.text.x=element_text(angle=60, hjust=1))+scale_y_continuous(labels=function(x) format(x, big.mark = ","))+theme(axis.text.x=element_text(size=11, angle=90,hjust=0.95,vjust=0.2))+geom_point(shape=21,fill="steel blue", color="black", size=6)+ggtitle("El presupuesto a través del tiempo. Valor real")


