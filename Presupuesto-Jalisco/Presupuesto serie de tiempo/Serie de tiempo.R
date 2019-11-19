# Environment Setup ------------------------------------------------------------------
rm(list=ls()) # Clear Workspace
options(stringsAsFactors = FALSE)
wd.dir    = "C:/Users/rente/Transversal-Presupuesto-Abierto/"
#wd.dir    = "C:/Users/GioVanny/Documents/Transversal-Presupuesto-Abierto/"
wd.datos  = paste0(wd.dir, "/Presupuesto-Jalisco/")
wd.script = paste0(wd.dir, "/Limpieza-Datos/")
wd.display= paste0(wd.dir, "/Graficas/")
#write.csv(egresos, paste0(wd.datos, "archivo.csv"))

# Packages
Packages <- c("haven", "tidyverse","dplyr", "ggplot2", "hrbrthemes")
#install.packages(Packages)
lapply(Packages, library, character.only = TRUE)

# CARGAR DATOS  -----------------------------------------------------------------------------------
Presupuesto <- read_csv(paste0(wd.dir, "Presupuesto-Jalisco/Presupuesto serie de tiempo/Presupuesto.csv"))
View(Presupuesto)

#Gráfica valor nominal y real
ggplot(Presupuesto, aes(x=year, y=`monto(mdp)`)) + 
  geom_line(aes(x = year, y=`monto(mdp)`), color="dark blue") +
  geom_line(aes(x = year, y=`monto_real(mdp)`), color= "red") +
  geom_point(aes(x = year, y=`monto(mdp)`), color="dark blue", size=1.5) +
  geom_point(aes(x = year, y=`monto_real(mdp)`), color="red", size=1.5) +
  # Theme  -----
  scale_y_continuous(labels=function(x) format(x, big.mark = ",")) +
  xlab("Año") + 
  ylab("Millones de pesos") +
  theme(axis.text.x = element_text(size = 11, angle = 90,hjust = 0.95,vjust = 0.2)) + 
  ggtitle("Evolución del presupuesto en Jalisco, 2005-2020")
ggsave(paste0(wd.display, "Presupuesto_05to20_Nominal_Ajustado.png"), width = 14, height = 8)


#Gráfica valor real
ggplot(Presupuesto, aes(x=year, y=`monto_real(mdp)`))+geom_line(color="steel blue") +
  geom_point()+xlab("Año")+ylab("Millones de pesos(pesos 2018)")+theme_ipsum() +
  theme(axis.text.x=element_text(angle=60, hjust=0.5))+scale_y_continuous(labels=function(x) format(x, big.mark = ",")) +
  theme(axis.text.x=element_text(size=11, angle=90,hjust=0.5,vjust=0.2))+geom_point(shape=21,fill="steel blue", color="black", size=6) +
  ggtitle("El presupuesto a través del tiempo. Valor real")+theme(plot.title = element_text(hjust = 0.5))

