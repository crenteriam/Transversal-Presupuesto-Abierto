library(ggplot2)
library(dplyr)
library(hrbrthemes)

#Gráfica valor nominal
ggplot(Presupuesto, aes(x=year, y=`monto(mdp)`))+geom_line(color="dark blue")+geom_point()+xlab("Presupuesto a través del tiempo")+ylab("Millones de pesos")+theme_ipsum()+theme(axis.text.x=element_text(angle=60, hjust=1))+scale_y_continuous(labels=function(x) format(x, big.mark = ","))+theme(axis.text.x=element_text(size=11, angle=90,hjust=0.95,vjust=0.2))+geom_point(shape=21,fill="dark blue", color="black", size=6)+ggtitle("El presupuesto a través del tiempo. Valor nominal")
#Gráfica valor real
ggplot(Presupuesto, aes(x=year, y=`monto_real(mdp)`))+geom_line(color="steel blue")+geom_point()+xlab("Presupuesto a través del tiempo")+ylab("Millones de pesos")+theme_ipsum()+theme(axis.text.x=element_text(angle=60, hjust=1))+scale_y_continuous(labels=function(x) format(x, big.mark = ","))+theme(axis.text.x=element_text(size=11, angle=90,hjust=0.95,vjust=0.2))+geom_point(shape=21,fill="steel blue", color="black", size=6)+ggtitle("El presupuesto a través del tiempo. Valor real")


