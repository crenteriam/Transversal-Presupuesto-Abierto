# Analisis del presupuesto del estado de Jalisco 2020
# Equipo Transversal
# https://presupuestociudadano.jalisco.gob.mx/presupuesto

# Environment Setup ------------------------------------------------------------------
rm(list=ls()) # Clear Workspace
options(stringsAsFactors = TRUE)
#wd.dir    = "C:/Users/rente/Transversal-Presupuesto-Abierto/"
#wd.dir    = "C:/Users/GioVanny/Documents/Transversal-Presupuesto-Abierto/"
wd.dir     = "C:/Users/rente/Transversal-Presupuesto-Abierto/"
wd.datos   = paste0(wd.dir, "/Presupuesto-Jalisco/")
wd.script  = paste0(wd.dir, "/Limpieza-Datos/")
wd.display = paste0(wd.dir, "/Graficas/")
#wd.display= paste0(wd.dir, "/2_displays/")
#write.csv(egresos, paste0(wd.datos, "archivo.csv"))

# Packages
Packages <- c("haven", "tidyverse")
#install.packages(Packages)
lapply(Packages, library, character.only = TRUE)

# CARGAR DATOS  ----------------------------------------------------------------------

dt.unidadespresupuestarias =  read_csv(paste0(wd.datos, "unidades presupuestales 18-19-20_v3.csv"))
dt.plazas2019 = read_csv(paste0(wd.datos, "analisis-plazas-2019.csv"))
dt.plazas2020 = read_csv(paste0(wd.datos, "analisis-plazas-2020.csv"))

# LIMPIEZA DE DATOS  -----------------------------------------------------------------

# Unidades Presupuestarias
dt.unidadespresupuestarias$Year = as.character(dt.unidadespresupuestarias$year)

# Plazas
dt.plazas2019$remuneracion_prom = (dt.plazas2019$remuneracion_min + dt.plazas2019$remuneracion_max) / 2
dt.plazas2019$gasto_total       = dt.plazas2019$cantidad_plazas * dt.plazas2019$remuneracion_prom
dt.plazas2020$remuneracion_prom = (dt.plazas2020$remuneracion_min + dt.plazas2020$remuneracion_max) / 2
dt.plazas2020$gasto_total       = dt.plazas2020$cantidad_plazas * dt.plazas2020$remuneracion_prom

### Subset plazas
dt.plazas2019sub   = subset(dt.plazas2019, select = c("plaza", "cantidad_plazas", "remuneracion_prom", "gasto_total"))
dt.plazas2020sub   = subset(dt.plazas2020, select = c("plaza", "cantidad_plazas", "remuneracion_prom", "gasto_total"))

# GRAFICAS   -------------------------------------------------------------------------

# G1 Comparativo del gasto por dependencia gubernamental 2018-2020
ggplot(data=dt.unidadespresupuestarias, aes(x=up, y=importe, fill=Year)) + 
  geom_bar(stat="identity", position=position_dodge()) + 
  theme(axis.text.x=element_text(size=11, angle=90,hjust=0.95,vjust=0.2)) +
  scale_y_continuous(labels=function(x) format(x, big.mark = ",")) +
  ylab("Presupuesto (en millones)")
ggsave(paste0(wd.display, "General_Dependencias.png"), width = 10, height = 10)
