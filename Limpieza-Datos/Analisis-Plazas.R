# Analisis de plzas: operativos versus mandos altos
# https://cran.r-project.org/web/packages/stringr/vignettes/stringr.html


#Mandos altos. Traté de buscar una forma que se pudiera hacer mediante una lista, 
#pero al parecer se necesita un data.frame. Entonces decidí poner cada sintaxis por separado
#para correr todo al mismo tiempo en lo que averiguo una forma de ponerlo en forma de lista.
dt.plazas2019$tipo = "OPERATIVO"
dt.plazas2019$detect = str_detect(dt.plazas2019$plaza, "GOBERNADOR")
dt.plazas2019$tipo[dt.plazas2019$detect==TRUE] = "MANDO ALTO"
dt.plazas2019$detect = str_detect(dt.plazas2019$plaza, "FISCAL")
dt.plazas2019$tipo[dt.plazas2019$detect==TRUE] = "MANDO ALTO"
dt.plazas2019$detect = str_detect(dt.plazas2019$plaza, "SECRETARIO")
dt.plazas2019$tipo[dt.plazas2019$detect==TRUE] = "MANDO ALTO"
dt.plazas2019$detect = str_detect(dt.plazas2019$plaza, "PROCURADOR")
dt.plazas2019$tipo[dt.plazas2019$detect==TRUE] = "MANDO ALTO"
dt.plazas2019$detect = str_detect(dt.plazas2019$plaza, "COMISIONADO")
dt.plazas2019$tipo[dt.plazas2019$detect==TRUE] = "MANDO ALTO"
dt.plazas2019$detect = str_detect(dt.plazas2019$plaza, "PRESIDENTE")
dt.plazas2019$tipo[dt.plazas2019$detect==TRUE] = "MANDO ALTO"
dt.plazas2019$detect = str_detect(dt.plazas2019$plaza, "MAGISTRADO")
dt.plazas2019$tipo[dt.plazas2019$detect==TRUE] = "MANDO ALTO"
dt.plazas2019$detect = str_detect(dt.plazas2019$plaza, "DIRECTOR GENERAL")
dt.plazas2019$tipo[dt.plazas2019$detect==TRUE] = "MANDO ALTO"
dt.plazas2019$detect = str_detect(dt.plazas2019$plaza, "DIRECTOR GRAL")
dt.plazas2019$tipo[dt.plazas2019$detect==TRUE] = "MANDO ALTO"
dt.plazas2019$detect = str_detect(dt.plazas2019$plaza, "SUBPROCURADOR")
dt.plazas2019$tipo[dt.plazas2019$detect==TRUE] = "MANDO ALTO"
dt.plazas2019$detect = str_detect(dt.plazas2019$plaza, "SUBSECRETARIO")
dt.plazas2019$tipo[dt.plazas2019$detect==TRUE] = "MANDO ALTO"
dt.plazas2019$detect = str_detect(dt.plazas2019$plaza, "CONTRALOR DEL")
dt.plazas2019$tipo[dt.plazas2019$detect==TRUE] = "MANDO ALTO"
dt.plazas2019$detect = str_detect(dt.plazas2019$plaza, "CAPITAN")
dt.plazas2019$tipo[dt.plazas2019$detect==TRUE] = "MANDO ALTO"
dt.plazas2019$detect = str_detect(dt.plazas2019$plaza, "OFICIAL MAYOR")
dt.plazas2019$tipo[dt.plazas2019$detect==TRUE] = "MANDO ALTO"


#Mandos medios
dt.plazas2019$detect = str_detect(dt.plazas2019$plaza, "SUBINSPECTOR")
dt.plazas2019$tipo[dt.plazas2019$detect==TRUE] = "MANDO MEDIO"
dt.plazas2019$detect = str_detect(dt.plazas2019$plaza, "SRIO EJECUTIVO")
dt.plazas2019$tipo[dt.plazas2019$detect==TRUE] = "MANDO MEDIO"
dt.plazas2019$detect = str_detect(dt.plazas2019$plaza, "SUBDIRECTOR")
dt.plazas2019$tipo[dt.plazas2019$detect==TRUE] = "MANDO MEDIO"
dt.plazas2019$detect = str_detect(dt.plazas2019$plaza, "JEFE")
dt.plazas2019$tipo[dt.plazas2019$detect==TRUE] = "MANDO MEDIO"
dt.plazas2019$detect = str_detect(dt.plazas2019$plaza, "COORDINADOR")
dt.plazas2019$tipo[dt.plazas2019$detect==TRUE] = "MANDO MEDIO"
dt.plazas2019$detect = str_detect(dt.plazas2019$plaza, "COMISARIO")
dt.plazas2019$tipo[dt.plazas2019$detect==TRUE] = "MANDO MEDIO"
dt.plazas2019$detect = str_detect(dt.plazas2019$plaza, "DELEGADO")
dt.plazas2019$tipo[dt.plazas2019$detect==TRUE] = "MANDO MEDIO"
dt.plazas2019$detect = str_detect(dt.plazas2019$plaza, "DIRECTOR DE")
dt.plazas2019$tipo[dt.plazas2019$detect==TRUE] = "MANDO MEDIO"
dt.plazas2019$detect = str_detect(dt.plazas2019$plaza, "INSPECTOR")
dt.plazas2019$tipo[dt.plazas2019$detect==TRUE] = "MANDO MEDIO"
dt.plazas2019$detect = str_detect(dt.plazas2019$plaza, "SECRETARIO PARTICULAR")
dt.plazas2019$tipo[dt.plazas2019$detect==TRUE] = "MANDO MEDIO"
dt.plazas2019$detect = str_detect(dt.plazas2019$plaza, "CONSEJERO GENERAL")
dt.plazas2019$tipo[dt.plazas2019$detect==TRUE] = "MANDO MEDIO"
dt.plazas2019$detect = str_detect(dt.plazas2019$plaza, "DIR")
dt.plazas2019$tipo[dt.plazas2019$detect==TRUE] = "MANDO MEDIO"



