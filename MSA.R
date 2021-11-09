                      #  PRACTICA DE ALINEAMIENTO  #

#librerias para manipular secuencias 
library(Biostrings)
library(msa)

#Cargar y leer las secuencias usando readStringset de Biostrings
insulina <- readAAStringSet("Insulinas.fasta")
insulina

globulinas <- readAAStringSet("globinas.fasta")
globulinas


#Alineamientos con distintos algoritmos
#alineamientos de insulinas
aln_clus<- msa(insulina, method = "ClustalW") #alineamiento de las secuencias
aln_clus
aln_mus<- msa(insulina, method = "Muscle") #alineamiento de las secuencias
aln_mus
aln_ome<- msa(insulina, method = "ClustalOmega") #alineamiento de las secuencias
aln_ome

#alineamientos de globinas
aln_clus2<- msa(globulinas, method = "ClustalW") #alineamiento de las secuencias
aln_clus2
aln_mus2<- msa(globulinas, method = "Muscle") #alineamiento de las secuencias
aln_mus2
aln_ome2<- msa(globulinas, method = "ClustalOmega") #alineamiento de las secuencias
aln_ome2

#Conversion para (cuestión interna, se necesita convertir a un objeto que reconozca un alineamiento que reconozca la libreria seqinr)
aln_clus<-msaConvert(aln_clus, type = "seqinr::alignment")
aln_clus2<-msaConvert(aln_clus2, type = "seqinr::alignment")
aln_mus<-msaConvert(aln_mus, type = "seqinr::alignment")
aln_mus2<-msaConvert(aln_mus2, type = "seqinr::alignment")
aln_ome<-msaConvert(aln_ome, type = "seqinr::alignment")
aln_ome2<-msaConvert(aln_ome2, type = "seqinr::alignment")

#calcular matriz de distancia
distclus<-dist.alignment(aln_clus,"identity")
as.matrix(distclus) #convertirlo a matriz

#este paquete es para matrices de distancia seqinr
install.packages("seqinr") #instalar paquete de seqnir que ocupo para el el dist.aligmente
library(seqinr)

#este paquete es para generar arboles en R a partir de la matriz de distancia
install.packages("ape")
library(ape) #correr desde la consola

#generar los datos que requiere un arbol filogenetico con el metodo de vecinos
arbolito <-nj(distclus)
arbolito

#con el objeto anterior generar un plot, main es el titulo de la filogenia
plot(arbolito, main="Arbol filogenético de insulinas")





suma<- 1

while(suma > 0){
  suma<- suma+1
}

