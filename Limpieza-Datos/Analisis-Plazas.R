# Analisis de plzas: operativos versus mandos altos
# https://cran.r-project.org/web/packages/stringr/vignettes/stringr.html


dt.plazas2019$tipo = ""
dt.plazas2019$detect = str_detect(dt.plazas2019$plaza, "SECRETARIO DE")
dt.plazas2019$tipo[dt.plazas2019$detect==TRUE & dt.plazas2019$remuneracion_prom>100000] = "mando alto"
dt.plazas2019$detect = str_detect(dt.plazas2019$plaza, "SECRETARIO DE")