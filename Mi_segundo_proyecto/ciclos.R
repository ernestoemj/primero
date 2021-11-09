
x <- read.csv("datos/Lista de excusas - Hoja 1.csv")
x

excusa<-function(x){
  a<-x[sample(1:20,1),1]
  b<-x[sample(1:20,1),2]
  c<-x[sample(1:20,1),1]
  return(print(paste(a,b,c)))
}

#

excusa_sr<-function(x){
  a<-x[sample(1:20),1]
  b<-x[sample(1:20),2]
  c<-x[sample(1:20),1]
  for(i in 1:20){
    print(paste(a[i],b[i],c[i]))
  }
  
}
# con este no estor reptiendo, es decir estoy generando 20 que no se van a repetir. 
#Al ponerle el for me esta generando 20 convinaciones que van del 1 al 20 sin repetir ninguna. 

x<-read.csv("01_Raw_Data/Lista de excusas - Hoja 1.csv") # Este fue el que hizo Roberto. 
excusa<-function(x){
  a<-x[sample(1:20,1),1]
  b<-x[sample(1:20,1),2]
  c<-x[sample(1:20,1),3]
  return (print(paste(a,b,c)))
}



excusa2<-function(x){
  a<-x[sample(1:20),1]
  b<-x[sample(1:20),2]
  c<-x[sample(1:20),3]
  return (print(paste(a,b,c)))
}


e_Coli <-read.csv("datos/proteins_167_161521.csv")
View(e_Coli)


# generar un histograma de los tamaños. 

pdf("")

# gráfica


library(ggplot2)

hist(e_Coli$Length)#forma fea


histograma <-ggplot(e_Coli, aes(x=Length)) + 
  geom_histogram(color="black", fill="yellow")
histograma #forma bonita


histograma
dev.off(histograma)
