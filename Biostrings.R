## Práctica de BiocManager ## 

if (!requireNamespace("BiocManager", quietly = TRUE))
  install.packages("BiocManager") # Insatalo el paquete biocmanager para poder instalar y administrar paquetes de bioconductor para poder hacer análisis y comprensión de datos genómicos. 


BiocManager::install("Biostrings") # esta biblioteca permite manipular cadenas de carácteres biológicos. 
library(Biostrings)

## Para una sola secuencia...

dna1 <- DNAString("ACGT--TGCC-N") # Prueba con una secuencia de ADN
dna1 # imprime la secuencia y muestra por colores cada base. 

## Para más de una secuencia...

dna2 <- DNAStringSet(c("ACTGGAACTCC","GTCAGGCTAGGTT","ATTTGCCGCAA"))
dna2

#NOTA: Para leer más de una secuencia se utiliza DNAstringset


IUPAC_CODE_MAP

## Acceder a elementos de la secuencia. 
dna1[1:6]
dna2[2:3]
dna2[[2]][1:3]


names(dna2)<-paste0("sequence_",1:3)
dna2

## comparar secuencias

dna1==dna2
dna1==dna1

length(dna1)
length(dna2)

## Frecuencia de alfabeto (saber cuantas C,T,A,G tenemos en nuestra secuencia)

alphabetFrequency(dna1)
alphabetFrequency(dna2)

## Porcentaje en el que se encuentran las bases nitrógenadas. 

alphabetFrequency(dna1,as.prob = TRUE)
alphabetFrequency(dna2,as.prob = TRUE)


## Concatenar secuencias.
dna3 <- DNAString("ATTGCCCT")
dna3

c(dna1,dna3) -> dnaF
dnaF
## para que sea más eficiente usar este tipo de concatenado, se usa con archivos fasta. 


## leer secuencias.
xc <-readDNAStringSet("~/")

XRMV <- readDNAStringSet("NC_001499.fna") # virus de la leucemia murina
XRMV

alphabetFrequency(XRMV) # Calcule el total de cada letra en mi secuencia
dinucleotideFrequency(XRMV) # Calcula los dinucleótidos


XRMV[[1]][1:100] # Accedí a los primeros 100 elementos de mi secuencia del virus de la leucemia.

## NOTA: leer secuencias concatenadas

secuenciasc <- readDNAStringSet("secuenciasvirus.fna")
secuenciasc # Aquí se muestra la lectura de mis dos secuencias concatenadas


## para acceder a diferentes elementos de mi secuencia.
secuenciasc[[1]][50:53]
secuenciasc[[2]][80:100]
#NOTA: estoy accediendo a diferentes elementos de mi archivo con las secuencias concatenadas. 

nchar(secuenciasc) #Número de caracteres de cada secuencia.

matriz <- alphabetFrequency(secuenciasc)
View(matriz)

matriz[2,"A"] #Acceder a los elementos de la matriz.
matriz[,"T"] # Con esta estoy visualizando las T de las dos secuencias concatenadas.

dinucleotideFrequency(secuenciasc)



## FUNCIONES BÁSICAS ##

#. length(), names().
#. c and 'rev (reverso de la secuencia).
#. width(), nchar() (numero de carateres en una secuencia).
#. ==, duplicated, unique.
#. as.charcater() or toString(): convierte a un vector de caracteres.
#. sort(), order().
#. chartr(): convierte letras en otras.
#. subseq(), subseq(), extractAt(), replaceAt().
#. replaceLetterAt().

width(dna2) # Cuenta el número de elementos que hay en las tres secuencias de dna2
dna2

sort(dna2) # ordena las secuencias de la primera a la ultima. 

rev(dna2) # Ordena de la ultima secuencia a la primera

dna1
rev(dna1) # lee mi secuencia de reverso. 


secuenciasc
rev(secuenciasc) # lee mis secuencias concatenadas al reverso. 

sort(secuenciasc)


## Funcionalidad biológica ##

#. reverse(): reverso de la secuencia.
#. complement(), reverseComplement: (reverso) complemento de la secuencia.
#. translate(): traduce una secuencia de DNA o RNA a aminoácidos.

# Voy a decargar una nueva secuencia para trabajar en ella. 

# alfavirus del bosque de Taï #

bosque <- readDNAStringSet("NC_032681.fna")
bosque

translate(bosque) # Me tradujo mi secuencia a aminoácidos.

reverse(bosque) # reverso de la secuencia de ADN del virus del bosque.

reverseComplement(bosque) # secuencia reverso complementaria del virus del bosque.

complement(bosque) # Secuencia complementaria del virus del bosque. 

# . Calcular el contenido de GC de un conjunto de secuencias.

letterFrequency(bosque, "GC")

# . Calcular la secuencia de dinucleótidos de un conjunto de secuencias.

dinucleotideFrequency(bosque)

trinucleotideFrequency(bosque)

# . Calcular una matriz de peso de posiciones de un conjunto de secuencias alineadas





## Secuencias en la librería BSgenome ##

available.genomes() # Muestra las librerías disponibles de diferentes genomas de distintos organismos. 


BiocManager::install("BSgenome") # Instalar la librería BSgenome para poder trabajar con genomas. 

library(BSgenome) # Cargar la librería BSgenome

BiocManager::install("BSgenome.Scerevisiae.UCSC.sacCer2")

library(BSgenome.Scerevisiae.UCSC.sacCer2)


library("BSgenome.Scerevisiae.UCSC.sacCer2") # Carga la librería del genoma de Saccharomyces cerevisiae
Scerevisiae # Muestra los datos del microorganismo "Saccharomyces cerevisiae".


seqlengths(Scerevisiae) # muestra los cromosomas del organismo y su número de elementos.

seqnames(Scerevisiae) # muestra los nombres de lo cromosomas del microorganismo. 

Scerevisiae$chrI # Muestra los elementos del cromosoma 1 del organismo. 

letterFrequency(Scerevisiae$chrI, "CG", as.prob = TRUE) # Porcentaje de CG en el cromosoma 1 del microorganismo
letterFrequency(Scerevisiae$chrI, "CG") # Total de CG en el cromosoma 1. 


param <- new("BSParams", X = Scerevisiae, FUN = letterFrequency) #¿?
head(bsapply(param, letters = "GC"))

param <- new("BSParams", X = Scerevisiae, FUN = letterFrequency, simplify = TRUE) #¿?
bsapply(param, letters = "GC")

sum(seqlengths(Scerevisiae))

sum(bsapply(param, letters = "GC")) / sum(seqlengths(Scerevisiae)) #¿?

# ENCONTRAR MOTIVOS(Patrones)
dnaseq <- DNAString("ACGTACGT") # Con esta secuencia es con la que voy a comparar. 
dnaseq

matchPattern(dnaseq, Scerevisiae$chrI) # encontrar coincidencias de una secuencia contra una sola
# Encontró una concidencia de la posición 57932 a la 57939 de 8.

countPattern(dnaseq, Scerevisiae$chrI) #¿?


vmatchPattern(dnaseq, Scerevisiae) # encontrar coincidencias de una secuencia contra más de una
# en este caso comparo con todas las de los cromosomas del microorganismo. 

head(vcountPattern(dnaseq, Scerevisiae)) #¿?

dnaseq == reverseComplement(dnaseq) # compara la secuencia normal con la secuencia reverso para ver si son iguales. 

ll <- readDNAStringSet("")


