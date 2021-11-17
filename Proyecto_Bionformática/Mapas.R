## MAPAS PARA LOS CONDICIONALES ##. 

#NOTA: Se necesitan tener activas siempre estas librerarias para la creación de mapas. 

library(sp)#Se necesita esta libreria para poder ver las clases y métodos de datos espaciales para la construcción del mapa. además es esencial para la creación de mapas. 
library(tibble) # Fusionar los vectores. 
library(ggplot2) # Creación de mapas. 

### Distribución de las 11 Familias linguisticas a nivel nacional ###

mexestado <- readRDS("gadm36_MEX_1_sp.rds") # Se esta insertando el mapa con división por estados.
plot(mexestado) # Pre-Visualización del mapa de México seccionado por estados.
coordinates(mexestado) # Da las coordenadas de cada estado de México. 

## 1) Tarasca. ##

ciudadTARA <- c("Durango", "Jalisco","Guerrero","Oaxaca","Estado de México","Veracruz","Nuevo León") # Vector con los nombres de los estados.
latTARAS <- c(24.90168,20.55777,17.66568,16.95577,19.34078,19.33951,25.58009) # Vector con la latitud de cada estado.
longTARAS <- c(-104.98568,-103.62732,-99.87815,-96.43817,-99.62718,-96.37178,-99.99729)# vector con la longitud de cada estado.

vTARA <- tibble(ciudadTARA = ciudadTARA, # tibble permite unir los tres vectores de arriba para ubicar los nombres de los estados en la parte correcta del mapa. 
           latTARAS = latTARAS,
            longTARAS = longTARAS)
vTARA # Imprime la unión de los vectores necesarios 


maptarasca <- ggplot(data=mexestado) +  # Es el esqueleto de nuestro codigo, el argumento indica el conjunto de datos que se se van a utilizar para el grafico(Mapa)
  geom_polygon(aes(x=long, y=lat, group=group), # Permite trazar los limites para cada región ya que dibuja el plano en poligonos.
               fill="azure2", # Color de relleno del mapa.
               color="black") + # Color de lineas. 
  theme_minimal() + # Tema minimalista sin anotaciones de fondo en el mapa. 
  theme(axis.text = element_blank()) + # Anula los temas predeterminados para poder tener más libertad en el diseño del mapa.
  labs(title = "Distribución Geográfica de la Familia Tarasca En los estados de México", # Titulo
       subtitle = "Tarasco.") + # Idiomas hablados
  geom_label(data = vTARA, # Esta colocando los puntos en el mapa de acuerdo a los valores asignados para cada estado en este caso los poligonos.
             aes(x = longTARAS, y = latTARAS),
             label = ciudadTARA)

maptarasca # Esta imprimiendo el mapa final. 

## 2) Algica. ##

ciudadALG <- c("Nuevo León")
latALG <- c(25.58009)
longALG <- c(-99.99729)

vALG <- tibble(ciudadALG = ciudadALG,
                latALG = latALG,
                longALG = longALG)
vALG


mapalgica <- ggplot(data=mexestado) +  
  geom_polygon(aes(x=long, y=lat, group=group), 
               fill="goldenrod2",
               color="black") +
  theme_minimal() +
  theme(axis.text = element_blank()) +
  labs(title = "Distribución Geográfica de la Familia Algica en los estados de México",
       subtitle = "Kickapoo.") +
  geom_label(data = vALG,
             aes(x = longALG, y = latALG),
             label = ciudadALG)

mapalgica

## 3) Yuto-nahua. 

ciudadYUTO <- c("Sonora", "Jalisco","veracruz","Hidalgo","Morelos","Estado MX","Guerrero","Puebla")
latYUTO <- c(29.68712,20.55777,19.33951,20.48370,18.73249,19.34078,17.66568,19.03753)
longYUTO <- c(-110.74790,-103.62732,-96.37178,-98.85757,-99.00674,-99.62718,-99.87815,-97.81618)

vYUTO <- tibble(ciudadYUTO = ciudadYUTO,
                latYUTO = latYUTO,
                longYUTO = longYUTO)
vYUTO


mapYUTO <- ggplot(data=mexestado) +  
  geom_polygon(aes(x=long, y=lat, group=group), 
               fill="snow3",
               color="black") +
  theme_minimal() +
  theme(axis.text = element_blank()) +
  labs(title = "Distribución Geográfica de la Familia Yuto-Nahua En los estados de México",
       subtitle = "Cora,Guarijío,Huichol,Mayo,Papago.") +
  geom_label(data = vYUTO,
             aes(x = longYUTO, y = latYUTO),
             label = ciudadYUTO)

mapYUTO

## 4) Cochimí-yumato. ##

ciudadCOCHI <- c("Baja California")
latCOCHI <- c(30.55904)
longCOCHI <- c(-115.09339)

vCOCHI <- tibble(ciudadCOCHI = ciudadCOCHI,
                latCOCHI = latCOCHI,
                longCOCHI = longCOCHI)
vCOCHI


mapCOCHIMI <- ggplot(data=mexestado) +  
  geom_polygon(aes(x=long, y=lat, group=group), 
               fill="peachpuff",
               color="black") +
  theme_minimal() +
  theme(axis.text = element_blank()) +
  labs(title = "Distribución Geográfica de la Familia Cochimi-Yumano en los estados de México",
       subtitle = "Cucapa,Kiliwa,Kumiai,Kualal,Paipai.") +
  geom_label(data = vCOCHI,
             aes(x = longCOCHI, y = latCOCHI),
             label = ciudadCOCHI)

mapCOCHIMI

## 5). Seri. ##

ciudadSERI <- c("Sonora")
latSERI <- c(29.68712)
longSERI <- c(-110.74790)

vSERI <- tibble(ciudadSERI = ciudadSERI,
                latTSERI = latSERI,
                longSERI = longSERI)
vSERI


mapSERI <- ggplot(data=mexestado) +  
  geom_polygon(aes(x=long, y=lat, group=group), 
               fill="navajowhite2",
               color="black") +
  theme_minimal() +
  theme(axis.text = element_blank()) +
  labs(title = "Distribución Geográfica de la Familia Seri en los estados de México",
       subtitle = "Seri.") +
  geom_label(data = vSERI,
             aes(x = longSERI, y = latSERI),
             label = ciudadSERI)

mapSERI

## 6) Oto-Mangue. ##


ciudadOTO <- c("Guanajuato","Querétaro","Hidalgo","Guerrero","Oaxaca","Puebla")
latOTO <- c(20.89808,20.84094,20.48370,17.66568, 16.95577,19.03753)
longOTO <- c(-101.03703,-99.87793,-98.85757,-99.87815,-96.43817,-97.81618)

vOTO <- tibble(ciudadOTO = ciudadOTO,
                latOTO = latOTO,
                longOTO = longOTO)
vOTO


mapOTO <- ggplot(data=mexestado) +  
  geom_polygon(aes(x=long, y=lat, group=group), 
               fill="gray72",
               color="black") +
  theme_minimal() +
  theme(axis.text = element_blank()) +
  labs(title = "Distribución Geográfica de la Familia Oto-Mangue en los estados de México",
       subtitle = "Matlazinca,Mazahua,Mazateco,Mixteco,Otomí,Pame,Popoloca,Tepehua
       Totonaco,Triqui,Tlahuica,Zapoteco.") +
  geom_label(data = vOTO,
             aes(x = longOTO, y = latOTO),
             label = ciudadOTO)

mapOTO

## 7) Maya. ##

ciudadMAYA <- c("Veracruz", "San Luis P","Chiapas","Yucatán","Quintana roo","Campeche")
latMAYA <- c(19.33951,22.60590,16.49106,20.78011, 19.66025,18.82915)
longMAYA <- c(-96.37178,-100.45155,-92.47479,-88.92569,-88.13274,-90.30399)

vMAYA <- tibble(ciudadMAYA = ciudadMAYA,
                latMAYA = latMAYA,
                longMAYA = longMAYA)
vMAYA


mapMAYA <- ggplot(data=mexestado) +  
  geom_polygon(aes(x=long, y=lat, group=group), 
               fill="darkolivegreen2",
               color="black") +
  theme_minimal() +
  theme(axis.text = element_blank()) +
  labs(title = "Distribución Geográfica de la Familia Maya en los estados de México",
       subtitle = "Akateko,Awakateko,Chonta de tabasco,Chuj,Chol,Huasteco
       Ixil,Jakalteko,Kaqchikel,Kiche,Tseltal.") +
  geom_label(data = vMAYA,
             aes(x = longMAYA, y = latMAYA),
             label = ciudadMAYA)

mapMAYA

## 8) Totonaco-Tepehua. ##

ciudadTOTO <- c("Veracruz","Puebla")
latTOTO <- c(19.33951,19.03753)
longTOTO <- c(-96.37178,-97.81618)

vTOTO <- tibble(ciudadTOTO = ciudadTOTO,
                latTOTO = latTOTO,
                longTOTO = longTOTO)
vTOTO


mapTOTO <- ggplot(data=mexestado) +  
  geom_polygon(aes(x=long, y=lat, group=group), 
               fill="darkgrey",
               color="black") +
  theme_minimal() +
  theme(axis.text = element_blank()) +
  labs(title = "Distribución Geográfica de la Familia Totonaco-Tepehua en los estados de México",
       subtitle = "Tepehua,Totonaco.") +
  geom_label(data = vTOTO,
             aes(x = longTOTO, y = latTOTO),
             label = ciudadTOTO)

mapTOTO

## 9) Mixe-Zaque. ##

ciudadMIXE <- c("Chiapas", "Oaxaca","Veracruz","Chihuahua","Coahuila")
latMIXE <- c(16.49106,16.95577,19.33951,28.81824,27.28553)
longMIXE<- c(-92.47479,-96.43817,-96.37178,-106.45400,-102.09677)

vMIXE <- tibble(ciudadMIXE = ciudadMIXE,
                latMIXE = latMIXE,
                longMIXE = longMIXE)
vMIXE


mapMIXE <- ggplot(data=mexestado) +  
  geom_polygon(aes(x=long, y=lat, group=group), 
               fill="burlywood",
               color="black") +
  theme_minimal() +
  theme(axis.text = element_blank()) +
  labs(title = "Distribución Geográfica de la Familia Mixe-zaque en los estados de México",
       subtitle = "Ayapaneco,Mixe,Olutedo,Popoluca de la sierra,Sayulteco
       Texistepequeño,Zoque.") +
  geom_label(data = vMIXE,
             aes(x = longMIXE, y = latMIXE),
             label = ciudadMIXE)

mapMIXE

## 10) Chontal de Oaxaca. ##
ciudadCHON <- c("Oaxaca")
latCHON <- c(16.95577)
longCHON <- c(-96.43817)

vCHON <- tibble(ciudadCHON = ciudadCHON,
                latCHON = latCHON,
                longCHON = longCHON)
vCHON


mapCHON <- ggplot(data=mexestado) +  
  geom_polygon(aes(x=long, y=lat, group=group), 
               fill="bisque1",
               color="black") +
  theme_minimal() +
  theme(axis.text = element_blank()) +
  labs(title = "Distribución Geográfica de  Chontal de Oaxaca en los estados de México",
       subtitle = "Chontal de Oaxaca.") +
  geom_label(data = vCHON,
             aes(x = longCHON, y = latCHON),
             label = ciudadCHON)

mapCHON

## 11) Huave. ##

ciudadHUAVE <- c("Tamaulipas", "Querétaro","Baja california Sur","Nayarit","Sinaloa","Coahuila","Michoacan")
latHUAVE <- c(24.30055,20.84094,25.90832,21.78022,24.99370,27.28553,19.19943)
longHUAVE <- c(-98.67563,-99.87793,-112.03974,-104.83692,-107.48990,-102.09677,-101.88452)

vHUAVE <- tibble(ciudadHUAVE = ciudadHUAVE,
                latHUAVE = latHUAVE,
                longHUAVE = longHUAVE)
vHUAVE


mapHUAVE <- ggplot(data=mexestado) +  
  geom_polygon(aes(x=long, y=lat, group=group), 
               fill="darkslategray4",
               color="black") +
  theme_minimal() +
  theme(axis.text = element_blank()) +
  labs(title = "Distribución Geográfica de la Familia Huave n los estados de México",
       subtitle = "Huave.") +
  geom_label(data = vHUAVE,
             aes(x = longHUAVE, y = latHUAVE),
             label = ciudadHUAVE)

mapHUAVE


#################### Aquí empiezan los mapas de los Estados con sus respectivos municipios ######################


mexEM <- readRDS("gadm36_MEX_2_sp.rds") # Esta tiene los estados y municipios.
mexEM # Imprime un informe con todos los datos del pais con los respectivos estados y municipios. 

## 1) Aguascalientes. ##

coordinates(aguascalientes) # Función para ver las coordinadas de cada municipio.

aguascalientes <- mexEM[mexEM$NAME_1=="Aguascalientes",] # Aquí se indica con que estado se va a trabajar.
plot(aguascalientes) # Este plot nos permite hacer una visualizacion general del estado seleccionado y sus municipios. 

nommuni <- c("Aguascalientes(931,261)","Asientos(35,211)","Calvillo(44,324)","Cosio(11,894)","El llano(14,989)") #Vector con el nombre de municipios.
latA <- c(21.83277,22.10412,21.85267,22.31557,21.90611) # Vector con las latitudes de los municipios.
lonA <- c(-102.2420,-102.0896,-102.7238,-102.3140,-102.4603) # Vector con las longitudes de los municipios.

A <- tibble(nommuni = nommuni, # Permite unir los tres vectores para su utilización en la creación del Mapa.
            latA = latA,
            lonA = lonA)
A # Imprime la unión de los tres vectores. 

mapaguas <- ggplot(data=aguascalientes) +  # Es el esqueleto de nuestro codigo, el argumento indica el conjunto de datos que se se van a utilizar para el grafico(Mapa)
  geom_polygon(aes(x=long, y=lat, group=group), # # Permite trazar los limites para cada región ya que dibuja el plano en poligonos.
               fill="43", # Indicando el color del mapa.
               color="black") + # Indica los bordes que delimitan cada municipio.
  theme_minimal() + #
  theme(axis.text = element_blank()) + # Permite anular los elementos de los temas predeterminados para tener más libertad al momento de diseñar el mapa.
  labs(title = "Lenguas habladas en Aguascalientes...", # indicando el titulo del mapa.
       subtitle = "Nahuatl,Mazahua,Otomi.", # Lenguas habladas. 
       caption = "Numero de hablantes de lenguas indigenas por municipio al 2020") + # Aquí va el subtitulo, sin embargo aquí coloco las lenguas presentes en el estado. 
  geom_label(data = A, # Esta colocando los puntos de las coordenadas respectivas a cada estado para que se asignen correctamente los nombres de estos.
             aes(x = lonA, y = latA),
             label = nommuni)
mapaguas # Este objeto contiene el mapa del estado con los respectivos datos asociados a los municipios. 

## 2) Baja california. ##
coordinates(bajacal) # Función para ver las coordinadas de cada municipio.

bajacal<- mexEM[mexEM$NAME_1=="Baja California",] # Aquí se indica con que estado se va a trabajar.
plot(bajacal) # Este plot nos permite hacer una visualizacion general del estado seleccionado y sus municipios. 

nommuniBJ <- c("Ensenada(931,261)","Mexicali(35,211)","N/S","Tijuana(11,894)","Rosarito(14,989)")
latBJ<- c(29.93326,31.84670,28.18186,32.37490,32.34321)
lonBJ <- c(-114.8685,-115.3045,-115.2307,-116.2239,-116.8392)

BJ <- tibble(nommuniBJ = nommuniBJ,
            latBJ = latBJ,
            lonBJ = lonBJ)
BJ

mapbaj <- ggplot(data=bajacal) +  # Es el esqueleto de nuestro codigo, el argumento indica el conjunto de datos que se se van a utilizar para el grafico(Mapa)
  geom_polygon(aes(x=long, y=lat, group=group), #geom poly recibe latitud , longitud y tipo de variable , en este caso estado
               fill="125", # Indicando el color del mapa.
               color="black") + # Indica los bordes que delimitan cada municipio.
  theme_minimal() +
  theme(axis.text = element_blank()) +
  labs(title = "Lenguas habladas en Baja California...", # Estoy indicando el titulo del mapa.
       subtitle = "Mixteco ,Nahuatl, Zapoteco",
       caption = "Número de hablantes de lenguas indigenas por municipio al 2020.") + # Aquí va el subtitulo, sin embargo aquí coloco las lenguas presentes en el estado. 
  geom_label(data = BJ,
             aes(x = lonBJ, y = latBJ),
             label = nommuniBJ)
mapbaj # Este objeto contiene el mapa del estado con los respectivos datos asociados a los municipios. 

## 3) Baja California Sur. # 
coordinates(bajacalsur) # Función para ver las coordinadas de cada municipio.

bajacalsur<- mexEM[mexEM$NAME_1=="Baja California Sur",] # Aquí se indica con que estado se va a trabajar.
plot(bajacalsur) # Este plot nos permite hacer una visualizacion general del estado seleccionado y sus municipios. 

nommuniBJS <- c("Comundú(56,720)","La Paz(189,826)","Loreto(10,624)")
latBJS<- c(25.44770,23.93637,27.18639)
lonBJS<- c(-111.6311,-110.4031,-113.1157)

BJS <- tibble(nommuniBJS = nommuniBJS,
             latBJS = latBJS,
             lonBJS = lonBJS)
BJS

mapbajsur <- ggplot(data=bajacalsur) +  # Es el esqueleto de nuestro codigo, el argumento indica el conjunto de datos que se se van a utilizar para el grafico(Mapa)
  geom_polygon(aes(x=long, y=lat, group=group), # 
               fill="125", # Indicando el color del mapa.
               color="black") + # Indica los bordes que delimitan cada municipio.
  theme_minimal() +
  theme(axis.text = element_blank()) +
  labs(title = "Lenguas habladas en Baja California Sur...", # Estoy indicando el titulo del mapa.
       subtitle = "Mixteco,Nahuatl,Zapoteco",
       caption = "Número de hablantes de lenguas indigenas por municipio al 2020.") + # Aquí va el subtitulo, sin embargo aquí coloco las lenguas presentes en el estado. 
  geom_label(data = BJS,
             aes(x = lonBJS, y = latBJS),
             label = nommuniBJS)
mapbajsur # Este objeto contiene el mapa del estado con los respectivos datos asociados a los municipios. 

## 4) Chiapas. ##
coordinates(chiap) # Función para ver las coordinadas de cada municipio.

chiap<- mexEM[mexEM$NAME_1=="Chiapas",] # Aquí se indica con que estado se va a trabajar.
plot(chiap) # Este plot nos permite hacer una visualizacion general del estado seleccionado y sus municipios. 

nommuniCHIAP <- c("Acacoyagua(17,994)","Acala(21,187)","Acapetehua(26,899)","Altamirano(36,160)","Amatán(24,512)","Amatenango(31,735)")
latCHIAP<- c(15.43840,16.57453,15.26913,16.70110,17.38844,15.58941)
lonCHIAP<- c(-92.68175,-92.83082,-92.78148,-92.86541,-92.85490,-92.08151)

CH<- tibble(nommuniCHIAP = nommuniCHIAP,
              latCHIAP = latCHIAP,
              lonCHIAP = lonCHIAP)
CH

mapchiap <- ggplot(data=chiap) +  # Es el esqueleto de nuestro codigo, el argumento indica el conjunto de datos que se se van a utilizar para el grafico(Mapa)
  geom_polygon(aes(x=long, y=lat, group=group), # 
               fill="90", # Indicando el color del mapa.
               color="black") + # Indica los bordes que delimitan cada municipio.
  theme_minimal() +
  theme(axis.text = element_blank()) +
  labs(title = "Lenguas habladas en Chiapas...", # Estoy indicando el titulo del mapa.
       subtitle = "Mam,Jakalteco,Tsotsil,Tojolabal,Teko,Qato´k,Tseltal,Lacandon,Zoque,Ch´ol,Chuj,Qanjobal",
       caption = "Número de hablantes de lenguas indigenas por municipio al 2020.") + # Aquí va el subtitulo, sin embargo aquí coloco las lenguas presentes en el estado. 
  geom_label(data = CH,
             aes(x = lonCHIAP, y = latCHIAP),
             label = nommuniCHIAP)
mapchiap # Este objeto contiene el mapa del estado con los respectivos datos asociados a los municipios. 

## 5) Campeche. ##
coordinates(campe) # Función para ver las coordinadas de cada municipio.

campe<- mexEM[mexEM$NAME_1=="Campeche",] # Aquí se indica con que estado se va a trabajar.
plot(campe) # Este plot nos permite hacer una visualizacion general del estado seleccionado y sus municipios. 

nommuniCAMPE <- c("Calkini(8,369)","Campeche(80,396)","Carmen(70,569)","Champotón(17,253)","Hecelchakan(8,256)","Hopelchen(8,456)")
latCAMPE<- c(20.37035,19.65550,18.38356,18.60901,20.14851,19.20278)
lonCAMPE<- c(-90.27565,-90.26055,-91.01672,-90.02688,-90.10384,-89.499950)

CAMP<- tibble(nommuniCAMPE = nommuniCAMPE,
            latCAMPE = latCAMPE,
            lonCAMPE = lonCAMPE)
CAMP

mapcampe <- ggplot(data=campe) +  # Es el esqueleto de nuestro codigo, el argumento indica el conjunto de datos que se se van a utilizar para el grafico(Mapa)
  geom_polygon(aes(x=long, y=lat, group=group), # 
               fill="azure", # Indicando el color del mapa.
               color="black") + # Indica los bordes que delimitan cada municipio.
  theme_minimal() +
  theme(axis.text = element_blank()) +
  labs(title = "Lenguas habladas en Campeche.", # Estoy indicando el titulo del mapa.
       subtitle = "Ixil,Kaqchikel,Kiche,Qeqchi,Akateko,Awakateko.",
       caption = "Número de hablantes de lenguas indigenas por municipio al 2020.") + # Aquí va el subtitulo, sin embargo aquí coloco las lenguas presentes en el estado. 
  geom_label(data = CAMP,
             aes(x = lonCAMPE, y = latCAMPE),
             label = nommuniCAMPE)
mapcampe # Este objeto contiene el mapa del estado con los respectivos datos asociados a los municipios. 

## 6) Chihuahua ##
coordinates(chihua) # Función para ver las coordinadas de cada municipio.

chihua<- mexEM[mexEM$NAME_1=="Chihuahua",] # Aquí se indica con que estado se va a trabajar.
plot(chihua) # Este plot nos permite hacer una visualizacion general del estado seleccionado y sus municipios. 

nommuniCHIHUA <- c("Ahumada(10,318)","Aldama(17,441)","Allende(7,432)","Aquiles (5,451)","Ascensión(19,059)")
latCHIHUA<- c(30.43845,29.12192,27.16226,28.58639,31.36136)
lonCHIHUA<- c(-106.3094,-105.6774,-105.4683,-105.8471,-107.4253)

CHIHUAA<- tibble(nommuniCHIHUA = nommuniCHIHUA,
              latCHIHUA = latCHIHUA,
              lonCHIHUA = lonCHIHUA)
CHIHUAA

mapchihua <- ggplot(data=chihua) +  # Es el esqueleto de nuestro codigo, el argumento indica el conjunto de datos que se se van a utilizar para el grafico(Mapa)
  geom_polygon(aes(x=long, y=lat, group=group), # 
               fill="cadetblue", # Indicando el color del mapa.
               color="black") + # Indica los bordes que delimitan cada municipio.
  theme_minimal() +
  theme(axis.text = element_blank()) +
  labs(title = "Lenguas habladas en Chihuahua.", # Estoy indicando el titulo del mapa.
       subtitle = "Tarahumara, Tepehuano del norte",
       caption = "Número de hablantes de lenguas indigenas por municipio al 2020.") + # Aquí va el subtitulo, sin embargo aquí coloco las lenguas presentes en el estado. 
  geom_label(data = CHIHUAA,
             aes(x = lonCHIHUA, y = latCHIHUA),
             label = nommuniCHIHUA)
mapchihua # Este objeto contiene el mapa del estado con los respectivos datos asociados a los municipios. 

view(mexxx$NAME_1)
## 7) Ciudad de México. ##
coordinates(cdmxx) # Función para ver las coordinadas de cada municipio.

cdmxx<- mexEM[mexEM$NAME_1=="Distrito Federal",] # Aquí se indica con que estado se va a trabajar.
plot(cdmxx) # Este plot nos permite hacer una visualizacion general del estado seleccionado y sus municipios. 

nommuniCDMXX <- c("Álvaro obregon(117,256)","Azcapotzalco(80,789)","Coyoacán(145,869)","Cuajimalpa(89,569)","Cuautémoc(180,456)")
latCDMXX<- c(19.28098,19.44027,19.34019,19.27675,19.27058)
lonCDMXX<- c(-99.19714,-99.15008,-99.12431,-99.10710,-99.27250)

vcdmx<- tibble(nommuniCDMXX = nommuniCDMXX,
                 latCDMXX = latCDMXX,
                 lonCDMXX = lonCDMXX)
vcdmx

mapcdmxx <- ggplot(data=cdmxx) +  # Es el esqueleto de nuestro codigo, el argumento indica el conjunto de datos que se se van a utilizar para el grafico(Mapa)
  geom_polygon(aes(x=long, y=lat, group=group), # 
               fill="honeydew3", # Indicando el color del mapa.
               color="black") + # Indica los bordes que delimitan cada municipio.
  theme_minimal() +
  theme(axis.text = element_blank()) +
  labs(title = "Lenguas habladas en Ciudad de Mexico.", # Estoy indicando el titulo del mapa.
       subtitle = "Mixteco,Zapoteca,Nahuatl,Huichol,Triqui,Mazateco.",
       caption = "Número de hablantes de lenguas indigenas por municipio al 2020.") + # Aquí va el subtitulo, sin embargo aquí coloco las lenguas presentes en el estado. 
  geom_label(data = vcdmx,
             aes(x = lonCDMXX, y = latCDMXX),
             label = nommuniCDMXX)
mapcdmxx # Este objeto contiene el mapa del estado con los respectivos datos asociados a los municipios. 

## 8) Coahuila. ##
coordinates(coahuilaa) # Función para ver las coordinadas de cada municipio.

coahuilaa<- mexEM[mexEM$NAME_1=="Coahuila",] # Aquí se indica con que estado se va a trabajar.
plot(coahuilaa) # Este plot nos permite hacer una visualizacion general del estado seleccionado y sus municipios. 

nommuniCOA <- c("Zaragoza(5,842)","Abasolo(6)","Acuña(510)","Allende(34)","Arteaga(33)")
latCOA<- c(27.15109,29.40572,28.29567,25.37661,26.87973)
lonCOA<- c(-101.2746,-102.0154,-100.8903,-100.6774,-100.8670)

vcoahuila<- tibble(nommuniCOA= nommuniCOA,
               latCOA = latCOA,
               lonCOA = lonCOA)
vcoahuila

mapcoahuila <- ggplot(data=coahuilaa) +  # Es el esqueleto de nuestro codigo, el argumento indica el conjunto de datos que se se van a utilizar para el grafico(Mapa)
  geom_polygon(aes(x=long, y=lat, group=group), # 
               fill="mistyrose", # Indicando el color del mapa.
               color="black") + # Indica los bordes que delimitan cada municipio.
  theme_minimal() +
  theme(axis.text = element_blank()) +
  labs(title = "Lenguas habladas en Coahuila...", # Estoy indicando el titulo del mapa.
       subtitle = "Nahuatl,Purepecha",
       caption = "Número de hablantes de lenguas indigenas por municipio al 2020.") + # Aquí va el subtitulo, sin embargo aquí coloco las lenguas presentes en el estado. 
  geom_label(data = vcoahuila,
             aes(x = lonCOA, y = latCOA),
             label = nommuniCOA)
mapcoahuila # Este objeto contiene el mapa del estado con los respectivos datos asociados a los municipios. 

## 9) Colima. ##
coordinates(COLIM) # Función para ver las coordinadas de cada municipio.

COLIM<- mexEM[mexEM$NAME_1=="Colima",] # Aquí se indica con que estado se va a trabajar.
plot(COLIM) # Este plot nos permite hacer una visualizacion general del estado seleccionado y sus municipios. 

nommuniCOLIM <- c("Armeria(2,364)","Colima(1,326)","Comala(376)","Cuaquimatlan(290)","Ixtlahuacan(5,363)")
latCOLIM<- c(19.01470,19.11886,19.37087,19.16487,19.36195)
lonCOLIM<- c(-104.0187,-103.6128,-103.8043,-103.9005,-103.6061)

vCOLIM<- tibble(nommuniCOLIM = nommuniCOLIM,
                   latCOLIM = latCOLIM,
                   lon1COLIM = lonCOLIM)
vCOLIM

mapCOLIM <- ggplot(data=COLIM) +  # Es el esqueleto de nuestro codigo, el argumento indica el conjunto de datos que se se van a utilizar para el grafico(Mapa)
  geom_polygon(aes(x=long, y=lat, group=group), # 
               fill="lightsteelblue2", # Indicando el color del mapa.
               color="black") + # Indica los bordes que delimitan cada municipio.
  theme_minimal() +
  theme(axis.text = element_blank()) +
  labs(title = "Lenguas habladas en Colima", # Estoy indicando el titulo del mapa.
       subtitle = "Tepehuano del sur",
       caption = "Número de hablantes de lenguas indigenas por municipio al 2020") + # Aquí va el subtitulo, sin embargo aquí coloco las lenguas presentes en el estado. 
  geom_label(data = vCOLIM,
             aes(x = lonCOLIM, y = latCOLIM),
             label = nommuniCOLIM)
mapCOLIM # Este objeto contiene el mapa del estado con los respectivos datos asociados a los municipios. 

## 9) Durango. ##

coordinates(durango) # Función para ver las coordinadas de cada municipio.

durango <- mexEM[mexEM$NAME_1=="Durango",] # Aquí se indica con que estado se va a trabajar.
plot(durango) # Este plot nos permite hacer una visualizacion general del estado seleccionado y sus municipios. 

nommuniDUR <- c("Canatlán(39,762)","Canelas(3,000)","Coneto(1,883)","Cuencamé(683)","Durango(35.653)")
latDUR<- c(24.61115,25.08336,24.99011,24.63640,23.96069)
lonDUR<- c(-105.1038,-106.6800,-104.8507,-103.7733,-104.8391)

vDUR<- tibble(nommuniDUR= nommuniDUR,
            latDUR = latDUR,
            lonDUR = lonDUR)
vDUR

mapDUR <- ggplot(data=durango) +  # Es el esqueleto de nuestro codigo, el argumento indica el conjunto de datos que se se van a utilizar para el grafico(Mapa)
  geom_polygon(aes(x=long, y=lat, group=group), # 
               fill="olivedrab3", # Indicando el color del mapa.
               color="black") + # Indica los bordes que delimitan cada municipio.
  theme_minimal() +
  theme(axis.text = element_blank()) +
  labs(title = "Lenguas indigenas habladas en el municipio de Durango...", # Estoy indicando el titulo del mapa.
       subtitle = "Otomí",
       caption = "Número de hablantes del otomi por municipio") + # Aquí va el subtitulo, sin embargo aquí coloco las lenguas presentes en el estado. 
  geom_label(data = vDUR,
             aes(x = lonDUR, y = latDUR),
             label = nommuniDUR)
mapDUR# Este objeto contiene el mapa del estado con los respectivos datos asociados a los municipios.

## 11) Estado de México.
coordinates(estamex) # Función para ver las coordinadas de cada municipio.

estamex<- mexEM[mexEM$NAME_1=="México",] # Aquí se indica con que estado se va a trabajar.
plot(estamex) # Este plot nos permite hacer una visualizacion general del estado seleccionado y sus municipios. 

nommuniEST <- c("Acambay(116,240)","Acolman(97,820)","Aculco(6.706)","Almoloya(909)","Al de Juárez(719)")
latEST<- c(19.96860,19.58657,20.11755,18.76334,19.35426)
lonEST<- c(-99.88423,-98.92017,-99.83310,-99.86805,-99.78316)

vEST<- tibble(nommuniEST= nommuniEST,
            latEST = latEST,
            lonEST = lonEST)
vEST

mapEST <- ggplot(data=estamex) +  # Es el esqueleto de nuestro codigo, el argumento indica el conjunto de datos que se se van a utilizar para el grafico(Mapa)
  geom_polygon(aes(x=long, y=lat, group=group), # 
               fill="seashell2", # Indicando el color del mapa.
               color="black") + # Indica los bordes que delimitan cada municipio.
  theme_minimal() +
  theme(axis.text = element_blank()) +
  labs(title = "Lenguas habladas en el Estado de México...", # Estoy indicando el titulo del mapa.
       subtitle = "Mazahua,Otomi,Nahua,Matlazinca,Tlahuica",
       caption = "Número de hablantes de lenguas indigenas por municipio") + # Aquí va el subtitulo, sin embargo aquí coloco las lenguas presentes en el estado. 
  geom_label(data = vEST,
             aes(x = lonEST, y = latEST),
             label = nommuniEST)
mapEST # Este objeto contiene el mapa del estado con los respectivos datos asociados a los municipios.

## 12) Guanajuato. ##
coordinates(GUANA) # Función para ver las coordinadas de cada municipio.

GUANA<- mexEM[mexEM$NAME_1=="Guanajuato",] # Aquí se indica con que estado se va a trabajar.
plot(GUANA) # Este plot nos permite hacer una visualizacion general del estado seleccionado y sus municipios. 

nommuniGUANA <- c("Abasolo(827)","Acámbaro(2714)","San Miguel(322)","Apaseo(687)","Apaseo el grande(1287)")
latGUANA<- c(20.54880,20.03412,20.91043,20.41450,20.56610)
lonGUANA<- c(-101.53234,-100.76417,-100.77329,-100.56854,-100.63788)

vGUANA<- tibble(nommuniGUANA= nommuniGUANA,
            latGUANA = latGUANA,
            lonGUANA = lonGUANA)
vGUANA

mapGUANA <- ggplot(data=GUANA) +  # Es el esqueleto de nuestro codigo, el argumento indica el conjunto de datos que se se van a utilizar para el grafico(Mapa)
  geom_polygon(aes(x=long, y=lat, group=group), # 
               fill="sienna2", # Indicando el color del mapa.
               color="black") + # Indica los bordes que delimitan cada municipio.
  theme_minimal() +
  theme(axis.text = element_blank()) +
  labs(title = "Lenguas indigenas habladas en Guanajuato...", # Estoy indicando el titulo del mapa.
       subtitle = "Nahuatl,Mixteco,Otomi,Mazateco,Zapoteco, Mazahua,Totonaco,Mixe,Purepecha,Tlapaneco",
       caption = "Total de hablantes por lenguas indigenas al 2020") + # Aquí va el subtitulo, sin embargo aquí coloco las lenguas presentes en el estado. 
  geom_label(data = vGUANA,
             aes(x = lonGUANA, y = latGUANA),
             label = nommuniGUANA)
mapGUANA # Este objeto contiene el mapa del estado con los respectivos datos asociados a los municipios.

##13) Guerrero. ##
coordinates(GUERRE) # Función para ver las coordinadas de cada municipio.

GUERRE<- mexEM[mexEM$NAME_1=="Guerrero",] # Aquí se indica con que estado se va a trabajar.
plot(GUERRE) # Este plot nos permite hacer una visualizacion general del estado seleccionado y sus municipios. 

nommuniGUE <- c("Acapulco(37,140)","Ahuacuotzingo(8,409)","Ajiuchitlán(156)","Alcozauca(18,474)","Alpoyeca(1,756)")
latGUE <- c(16.95997,17.72646,17.88511,17.44073,17.68388)
lonGUE <- c(-99.68187,-98.87810,-100.58440,-98.29095,-98.38689)

vGUE<- tibble(nommuniGUE= nommuniGUE,
            latGUE = latGUE,
            lonGUE = lonGUE)
vGUE

mapGUERRE <- ggplot(data=GUERRE) +  # Es el esqueleto de nuestro codigo, el argumento indica el conjunto de datos que se se van a utilizar para el grafico(Mapa)
  geom_polygon(aes(x=long, y=lat, group=group), # 
               fill="yellow4", # Indicando el color del mapa.
               color="black") + # Indica los bordes que delimitan cada municipio.
  theme_minimal() +
  theme(axis.text = element_blank()) +
  labs(title = "Lenguas indigenas habladas en el estado de guerrero", # Estoy indicando el titulo del mapa.
       subtitle = "Tlapaneco,Mixteco,Amuzgo",
       caption = "Total de hablantes de lenguas indigenas por municipio") + # Aquí va el subtitulo, sin embargo aquí coloco las lenguas presentes en el estado. 
  geom_label(data = vGUE,
             aes(x = lonGUE, y = latGUE),
             label = nommuniGUE)
mapGUERRE # Este objeto contiene el mapa del estado con los respectivos datos asociados a los municipios.

## 14) Hidalgo. ##
coordinates(HIDA) # Función para ver las coordinadas de cada municipio.

HIDA <- mexEM[mexEM$NAME_1=="Hidalgo",] # Aquí se indica con que estado se va a trabajar.
plot(HIDA) # Este plot nos permite hacer una visualizacion general del estado seleccionado y sus municipios. 

nommuniHIDA <- c("Acatlán(264)","Acaxochitlán(22,590)","Actopan(6,097)","Agua Blanca(156)","Ajacuba(235)")
latHIDA<- c(20.19267,20.18108,20.33633,20.38421,20.12387)
lonHIDA<- c(-98.39118,-98.15995,-98.83092,-98.29317,-98.9791)

vHID<- tibble(nommuniHIDA= nommuniHIDA,
            latHIDA = latHIDA,
            lonHIDA = lonHIDA)
vHID

mapHIDA<- ggplot(data=HIDA) +  # Es el esqueleto de nuestro codigo, el argumento indica el conjunto de datos que se se van a utilizar para el grafico(Mapa)
  geom_polygon(aes(x=long, y=lat, group=group), # 
               fill="aquamarine3", # Indicando el color del mapa.
               color="black") + # Indica los bordes que delimitan cada municipio.
  theme_minimal() +
  theme(axis.text = element_blank()) +
  labs(title = "Lenguas indigenas habladas en el estado de Hidalgo", # Estoy indicando el titulo del mapa.
       subtitle = "Otomi,Nahuatl,Tepehua,Totonaco",
       caption = "Total de hablantes de lenguas indigenas por municipio") + # Aquí va el subtitulo, sin embargo aquí coloco las lenguas presentes en el estado. 
  geom_label(data = vHID,
             aes(x = lonHIDA, y = latHIDA),
             label = nommuniHIDA)
mapHIDA # Este objeto contiene el mapa del estado con los respectivos datos asociados a los municipios.

## 15) Jalisco. ##
coordinates(JALI) # Función para ver las coordinadas de cada municipio.

JALI<- mexEM[mexEM$NAME_1=="Jalisco",] # Aquí se indica con que estado se va a trabajar.
plot(JALI) # Este plot nos permite hacer una visualizacion general del estado seleccionado y sus municipios. 

nommuniJALI <- c("Acatic(55)","Acatlán(106)","Ahualulco(23)","Amacueca(12)","Amatitán(10)","Ameca(552)","San Juanito(22)","El arenal(46)")
latJALI<- c(20.734,20.38909,20.38490,19.96396,20.80340,20.50544,20.76866,20.72347)
lonJALI<- c(-102.9564,-103.6224,-103.9261,-103.6406,-103.7128,-104.0897,-104.0025,-102.3585)

vJALI<- tibble(nommuniJALI= nommuniJALI,
            latJALI = latJALI,
            lonJALI = lonJALI)
vJALI

mapJALI <- ggplot(data=JALI) +  # Es el esqueleto de nuestro codigo, el argumento indica el conjunto de datos que se se van a utilizar para el grafico(Mapa)
  geom_polygon(aes(x=long, y=lat, group=group), # 
               fill="coral3", # Indicando el color del mapa.
               color="black") + # Indica los bordes que delimitan cada municipio.
  theme_minimal() +
  theme(axis.text = element_blank()) +
  labs(title = "Lenguas indigenas habladas en el estado de Jalisco", # Estoy indicando el titulo del mapa.
       subtitle = "Huichol",
       caption = "Total de hablantes de lenguas indigenas por municipio") + # Aquí va el subtitulo, sin embargo aquí coloco las lenguas presentes en el estado. 
  geom_label(data = vJALI,
             aes(x = lonJALI, y = latJALI),
             label = nommuniJALI)
mapJALI # Este objeto contiene el mapa del estado con los respectivos datos asociados a los municipios.

## 16) Michoacan. ##
coordinates(MICHO) # Función para ver las coordinadas de cada municipio.

MICHO<- mexEM[mexEM$NAME_1=="Michoacán",] # Aquí se indica con que estado se va a trabajar.
plot(MICHO) # Este plot nos permite hacer una visualizacion general del estado seleccionado y sus municipios. 

nommuniMICHO <- c("Acuitzio(50)","Aguilila(168)","Alvaro obregon(48)","Angamacutiro(31)","Paracuaro(1,429)")
latMICHO<- c(19.46402,18.76861,19.85848,20.13893,19.63423)
lonMICHO<- c(-101.3640,-102.7329,-101.0405,-101.7502,-100.2896)

vMICHO<- tibble(nommuniMICHO= nommuniMICHO,
            latMICHO = latMICHO,
            lonMICHO = lonMICHO)
vMICHO

mapMICHO <- ggplot(data=MICHO) +  # Es el esqueleto de nuestro codigo, el argumento indica el conjunto de datos que se se van a utilizar para el grafico(Mapa)
  geom_polygon(aes(x=long, y=lat, group=group), # 
               fill="khaki3", # Indicando el color del mapa.
               color="black") + # Indica los bordes que delimitan cada municipio.
  theme_minimal() +
  theme(axis.text = element_blank()) +
  labs(title = "Lenguas indigenas habladas en el estado de Michoacán", # Estoy indicando el titulo del mapa.
       subtitle = "Tarasco,Totonaco,Popoloca",
       caption = "Total de hablantes de lenguas indigenas por municipio") + # Aquí va el subtitulo, sin embargo aquí coloco las lenguas presentes en el estado. 
  geom_label(data = vMICHO,
             aes(x = lonMICHO, y = latMICHO),
             label = nommuniMICHO)
mapMICHO # Este objeto contiene el mapa del estado con los respectivos datos asociados a los municipios.

## 17) Morelos. ##
coordinates(MORELOS) # Función para ver las coordinadas de cada municipio.

MORELOS<- mexEM[mexEM$NAME_1=="Morelos",] # Aquí se indica con que estado se va a trabajar.
plot(MORELOS) # Este plot nos permite hacer una visualizacion general del estado seleccionado y sus municipios. 

nommuniMORE <- c("Amacuzac(260)","Atlatlahucan(2,096)","Axochiapan(1,123)","Ayala(4,741)","Coatlán (73)")
latMORE<- c(18.58797,18.92421,18.53176,18.69963,18.70201)
lonMORE<- c(-99.33909,-98.84811,-98.67260,-98.90893,-99.41082)

vMORE<- tibble(nommuniMORE= nommuniMORE,
            latMORE = latMORE,
            lonMORE = lonMORE)
vMORE

mapMORE<- ggplot(data=MORELOS) +  # Es el esqueleto de nuestro codigo, el argumento indica el conjunto de datos que se se van a utilizar para el grafico(Mapa)
  geom_polygon(aes(x=long, y=lat, group=group), # 
               fill="green", # Indicando el color del mapa.
               color="black") + # Indica los bordes que delimitan cada municipio.
  theme_minimal() +
  theme(axis.text = element_blank()) +
  labs(title = "Lenguas indigenas habladas en el estado de Morelos...", # Estoy indicando el titulo del mapa.
       subtitle = "Nahuatl,Mixteco,Tlapaneco,Zapoteco",
       caption = "Total de hablantes de lenguas indigenas por municipio") + # Aquí va el subtitulo, sin embargo aquí coloco las lenguas presentes en el estado. 
  geom_label(data = vMORE,
             aes(x = lonMORE, y = latMORE),
             label = nommuniMORE)
mapMORE # Este objeto contiene el mapa del estado con los respectivos datos asociados a los municipios.

## 18) Nayarit. ##
coordinates(NAYAR) # Función para ver las coordinadas de cada municipio.

NAYAR<- mexEM[mexEM$NAME_1=="Nayarit",] # Aquí se indica con que estado se va a trabajar.
plot(NAYAR) # Este plot nos permite hacer una visualizacion general del estado seleccionado y sus municipios. 

nommuniNAYAR <- c("Acaponeta(1,439)","Ahuacatlan(130)","Amatlan(31)","Compostela(1,589)","Tepic Nayarit(7,568)")
latNAYAR<- c(22.45442,21.00931,20.82778,21.04583,22.07605)
lonNAYAR<- c(-105.2774,-104.5659,-104.4102,-105.115,-104.6599)

vNAYAR<- tibble(nommuniNAYAR= nommuniNAYAR,
            latNAYAR = latNAYAR,
            lonNAYAR = lonNAYAR)
vNAYAR

mapNAYAR <- ggplot(data=NAYAR) +  # Es el esqueleto de nuestro codigo, el argumento indica el conjunto de datos que se se van a utilizar para el grafico(Mapa)
  geom_polygon(aes(x=long, y=lat, group=group), # 
               fill="lightgoldenrod", # Indicando el color del mapa.
               color="black") + # Indica los bordes que delimitan cada municipio.
  theme_minimal() +
  theme(axis.text = element_blank()) +
  labs(title = "Lenguas indigenas habladas en el estado de Nayarit", # Estoy indicando el titulo del mapa.
       subtitle = "Cora,Huasteco,Pame",
       caption = "Total de hablantes de lenguas indigenas por municipio") + # Aquí va el subtitulo, sin embargo aquí coloco las lenguas presentes en el estado. 
  geom_label(data = vNAYAR,
             aes(x = lonNAYAR, y = latNAYAR),
             label = nommuniNAYAR)
mapNAYAR # Este objeto contiene el mapa del estado con los respectivos datos asociados a los municipios.

## 19) Nuevo León. ##
coordinates(NUEVL) # Función para ver las coordinadas de cada municipio.

NUEVL<- mexEM[mexEM$NAME_1=="Nuevo León",] # Aquí se indica con que estado se va a trabajar.
plot(NUEVL) # Este plot nos permite hacer una visualizacion general del estado seleccionado y sus municipios. 

nommuniNUEVL <- c("Abasolo(20)","Agualeguas(8)","Los Aldamas(306)","Allende(23)","Anahuác(9,094)")
latNUEVL<- c(25.96021,26.31100,25.31735,27.33243,25.83515)
lonNUEVL<- c(-100.42920,-99.71650,-100.01356,-100.07289,-100.17583)

vNUEVL<- tibble(nommuniNUEVL= nommuniNUEVL,
            latNUEVL = latNUEVL,
            lonNUEVL = lonNUEVL)
vNUEVL

mapNUEVL <- ggplot(data=NUEVL) +  # Es el esqueleto de nuestro codigo, el argumento indica el conjunto de datos que se se van a utilizar para el grafico(Mapa)
  geom_polygon(aes(x=long, y=lat, group=group), # 
               fill="lightsteelblue2", # Indicando el color del mapa.
               color="black") + # Indica los bordes que delimitan cada municipio.
  theme_minimal() +
  theme(axis.text = element_blank()) +
  labs(title = "Lenguas indigenas habladas en el estado de Nuevo León", # Estoy indicando el titulo del mapa.
       subtitle = "Huasteco,Pame.",
       caption = "Total de hablantes de lenguas indigenas por municipio") + # Aquí va el subtitulo, sin embargo aquí coloco las lenguas presentes en el estado. 
  geom_label(data = vNUEVL,
             aes(x = lonNUEVL, y = latNUEVL),
             label = nommuniNUEVL)
mapNUEVL # Este objeto contiene el mapa del estado con los respectivos datos asociados a los municipios.

## 20) Oaxaca. ##
coordinates(OAXAC) # Función para ver las coordinadas de cada municipio.

OAXAC<- mexEM[mexEM$NAME_1=="Oaxaca",] # Aquí se indica con que estado se va a trabajar.
plot(OAXAC) # Este plot nos permite hacer una visualizacion general del estado seleccionado y sus municipios. 

nommuniOAXAC <- c("Abejenos(881)","Acatlan(9.322)","Asunción Catalotepec(2,027)","Cuyotepji(11)","Ixtlaltepec(10,995)","Nochixtlan(4,491)","Ocotlan(2,535)","San lorenzo(72)","Cuplaltan(320)")
latOAXAC<- c(17.57193,17.89185,17.83367,17.1162,16.61846,17.40193,17.96015,17.54232,16.44019)
lonOAXAC<- c(-95.84291,-97.30182,-96.83941,-96.72322,-96.92761,-96.86549,-97.73971,-96.54734,-98.05987)

vOAXAC <- tibble(nommuniOAXAC= nommuniOAXAC,
            latOAXAC = latOAXAC,
            lonOAXAC = lonOAXAC)
vOAXAC

mapOAXAC <- ggplot(data=OAXAC) +  # Es el esqueleto de nuestro codigo, el argumento indica el conjunto de datos que se se van a utilizar para el grafico(Mapa)
  geom_polygon(aes(x=long, y=lat, group=group), # 
               fill="cyan4", # Indicando el color del mapa.
               color="black") + # Indica los bordes que delimitan cada municipio.
  theme_minimal() +
  theme(axis.text = element_blank()) +
  labs(title = "Lenguas indigenas habladas en el estado de Oaxaca", # Estoy indicando el titulo del mapa.
       subtitle = "Mazateco,Zapoteco,Chontal de oaxaca,Mixe,Chinanteco,
       Huave,Chatino,Ixcateco,Chocholteco,Triqui,Cuicateco.",
       caption = "Total de hablantes de lenguas indigenas por municipio") + # Aquí va el subtitulo, sin embargo aquí coloco las lenguas presentes en el estado. 
  geom_label(data = vOAXAC,
             aes(x = lonOAXAC, y = latOAXAC),
             label = nommuniOAXAC)
mapOAXAC # Este objeto contiene el mapa del estado con los respectivos datos asociados a los municipios.

# 21) Puebla. ##
coordinates(PUEBLA) # Función para ver las coordinadas de cada municipio.

PUEBLA<- mexEM[mexEM$NAME_1=="Puebla",] # Aquí se indica con que estado se va a trabajar.
plot(PUEBLA) # Este plot nos permite hacer una visualizacion general del estado seleccionado y sus municipios. 

nommuniPUEB <- c("Acajete(9,278)","Acateno(604)","Acatlán(12924)","Acatzingo(611)","Cohetzala(990)","Xicotlan(41)")
latPUEB<- c(19.11923,20.15605,18.26287,19.07764,18.74487,20.06055)
lonPUEB<- c(-97.84477,-97.15343,-97.92347,-97.68654,-98.57526,-97.80728)

vPUEB <- tibble(nommuniPUEB= nommuniPUEB,
            latPUEB = latPUEB,
            lonPUEB = lonPUEB)
vPUEB

mapPUEB <- ggplot(data=PUEBLA) +  # Es el esqueleto de nuestro codigo, el argumento indica el conjunto de datos que se se van a utilizar para el grafico(Mapa)
  geom_polygon(aes(x=long, y=lat, group=group), # 
               fill="tan3", # Indicando el color del mapa.
               color="black") + # Indica los bordes que delimitan cada municipio.
  theme_minimal() +
  theme(axis.text = element_blank()) +
  labs(title = "Lenguas indigenas habladas en el estado de Puebla", # Estoy indicando el titulo del mapa.
       subtitle = "Otomi,Nahuatl,Mazahua,Zapoteco",
       caption = "Total de hablantes de lenguas indigenas por municipio") + # Aquí va el subtitulo, sin embargo aquí coloco las lenguas presentes en el estado. 
  geom_label(data = vPUEB,
             aes(x = lonPUEB, y = latPUEB),
             label = nommuniPUEB)
mapPUEB # Este objeto contiene el mapa del estado con los respectivos datos asociados a los municipios.

## 21) Queretaro. ##
coordinates(QUERET) # Función para ver las coordinadas de cada municipio.

QUERET<- mexEM[mexEM$NAME_1=="Querétaro",] # Aquí se indica con que estado se va a trabajar.
plot(QUERET) # Este plot nos permite hacer una visualizacion general del estado seleccionado y sus municipios. 

nommuniQUERET <- c("Amealco(20,044)","Pinal(2,063)","Cadereyta(163)","Colón(4,805)","Corregidora(337)","Marques(1,785")
latQUERET<- c(20.19470,21.38255,20.82523,20.76365,20.47838,20.73309)
lonQUERET<- c(-100.13535,-99.65169,-99.64733,-100.11680,-100.45326,-100.29052)

vQUERET<- tibble(nommuniQUERET= nommuniQUERET,
            latQUERET = latQUERET,
            lonQUERET = lonQUERET)
vQUERET

mapQUERET <- ggplot(data=QUERET) +  # Es el esqueleto de nuestro codigo, el argumento indica el conjunto de datos que se se van a utilizar para el grafico(Mapa)
  geom_polygon(aes(x=long, y=lat, group=group), # 
               fill="seashell3", # Indicando el color del mapa.
               color="black") + # Indica los bordes que delimitan cada municipio.
  theme_minimal() +
  theme(axis.text = element_blank()) +
  labs(title = "Lenguas indigenas habladas en el estado de Querétaro", # Estoy indicando el titulo del mapa.
       subtitle = "Maya,Tzotzil,Chol,Kanjobal",
       caption = "Total de hablantes de lenguas indigenas por municipio") + # Aquí va el subtitulo, sin embargo aquí coloco las lenguas presentes en el estado. 
  geom_label(data = vQUERET,
             aes(x = lonQUERET, y = latQUERET),
             label = nommuniQUERET)
mapQUERET # Este objeto contiene el mapa del estado con los respectivos datos asociados a los municipios.

## 22) Quintana roo. ##
coordinates(QUINTR) # Función para ver las coordinadas de cada municipio.

QUINTR<- mexEM[mexEM$NAME_1=="Quintana Roo",] # Aquí se indica con que estado se va a trabajar.
plot(QUINTR) # Este plot nos permite hacer una visualizacion general del estado seleccionado y sus municipios. 

nommuniQUINTR <- c("Cozumel(26,886)","Felipe CP(72,148)","Isla M(5,540)","Othonp.b(46.602)","Benito(190,341)","Jose (32,200)","Lazaro(20,824)","Solidaridad(56,326)")
latQUINTR<- c(21.05480,20.43567,19.35477,19.67488,21.32604,19.69421,21.08410,18.70648)
lonQUINTR<- c(-86.91856,-87.51825,-87.50105,-88.05860,-86.95274,-88.88885,-87.33167,-88.51077)

vQUINTR<- tibble(nommuniQUINTR= nommuniQUINTR,
            latQUINTR = latQUINTR,
            lonQUINTR = lonQUINTR)
vQUINTR

mapQUINTR <- ggplot(data=QUINTR) +  # Es el esqueleto de nuestro codigo, el argumento indica el conjunto de datos que se se van a utilizar para el grafico(Mapa)
  geom_polygon(aes(x=long, y=lat, group=group), # 
               fill="66C", # Indicando el color del mapa.
               color="black") + # Indica los bordes que delimitan cada municipio.
  theme_minimal() +
  theme(axis.text = element_blank()) +
  labs(title = "Lenguas indigenas habladas en el estado de Quintana Roo", # Estoy indicando el titulo del mapa.
       subtitle = "Ayapaneco,Chontal de tabasco",
       caption = "Total de hablantes de lenguas indigenas por municipio") + # Aquí va el subtitulo, sin embargo aquí coloco las lenguas presentes en el estado. 
  geom_label(data = vQUINTR,
             aes(x = lonQUINTR, y = latQUINTR),
             label = nommuniQUINTR)
mapQUINTR # Este objeto contiene el mapa del estado con los respectivos datos asociados a los municipios.

## 24) San Luis Potosí. ##
coordinates(SANLP) # Función para ver las coordinadas de cada municipio.

SANLP<- mexEM[mexEM$NAME_1=="San Luis Potosí",] # Aquí se indica con que estado se va a trabajar.
plot(SANLP) # Este plot nos permite hacer una visualizacion general del estado seleccionado y sus municipios. 

nommuniSANLP <- c("Ahualulco(36)","Alaquines(404)","Akismon(38,521)","Armadillo(5)","Cardenas(492)","Catorce(33)","Cerritos(98)")
latSANLP<- c(22.43659,22.09414,21.75019,22.27460,21.45591,21.99462,23.65313)
lonSANLP<- c(-101.25049,-99.66007,-99.13902,-100.62783,-98.91146,-99.62666,-101.05868)

vSANLP<- tibble(nommuniSANLP= nommuniSANLP,
            latSANLP = latSANLP,
            lonSANLP = lonSANLP)
vSANLP

mapSANLP <- ggplot(data=SANLP) +  # Es el esqueleto de nuestro codigo, el argumento indica el conjunto de datos que se se van a utilizar para el grafico(Mapa)
  geom_polygon(aes(x=long, y=lat, group=group), # 
               fill="333", # Indicando el color del mapa.
               color="black") + # Indica los bordes que delimitan cada municipio.
  theme_minimal() +
  theme(axis.text = element_blank()) +
  labs(title = "Lenguas indigenas habladas en el estado de San Luis Potosí", # Estoy indicando el titulo del mapa.
       subtitle = "Huasteco,Pame.",
       caption = "Total de hablantes de lenguas indigenas por municipio") + # Aquí va el subtitulo, sin embargo aquí coloco las lenguas presentes en el estado. 
  geom_label(data = vSANLP,
             aes(x = lonSANLP, y = latSANLP),
             label = nommuniSANLP)
mapSANLP # Este objeto contiene el mapa del estado con los respectivos datos asociados a los municipios.

## 25) Sinaloa. 
coordinates(SINL) # Función para ver las coordinadas de cada municipio.

SINL<- mexEM[mexEM$NAME_1=="Sinaloa",] # Aquí se indica con que estado se va a trabajar.
plot(SINL) # Este plot nos permite hacer una visualizacion general del estado seleccionado y sus municipios. 

nommuniSINL<- c("Ahome(16,588)","Angustura(289)","Badiraguato(35)","Concordia(83)","Cosala(64)","Culiacan(7,470)")
latSINL<- c(25.92367,25.274432,25.57557,24.18082,26.58947,23.44131)
lonSINL<- c(-109.0748,-108.2016,-107.5049,-107.3119,-108.1523,-106.0077)

vSINL<- tibble(nommuniSINL= nommuniSINL,
            latSINL = latSINL,
            lonSINL = lonSINL)
vSINL

mapSINL <- ggplot(data=SINL) +  # Es el esqueleto de nuestro codigo, el argumento indica el conjunto de datos que se se van a utilizar para el grafico(Mapa)
  geom_polygon(aes(x=long, y=lat, group=group), # 
               fill="slateblue3", # Indicando el color del mapa.
               color="black") + # Indica los bordes que delimitan cada municipio.
  theme_minimal() +
  theme(axis.text = element_blank()) +
  labs(title = "Lenguas indigenas habladas en el estado de sinaloa", # Estoy indicando el titulo del mapa.
       subtitle = "Mayo,Tarahumara,Tepehuano,Mejiquense",
       caption = "Total de hablantes de lenguas indigenas por municipio") + # Aquí va el subtitulo, sin embargo aquí coloco las lenguas presentes en el estado. 
  geom_label(data = vSINL,
             aes(x = lonSINL, y = latSINL),
             label = nommuniSINL)
mapSINL# Este objeto contiene el mapa del estado con los respectivos datos asociados a los municipios.

## 26) Sonora. ##
coordinates(SONR) # Función para ver las coordinadas de cada municipio.

SONR<- mexEM[mexEM$NAME_1=="Sonora",] # Aquí se indica con que estado se va a trabajar.
plot(SONR) # Este plot nos permite hacer una visualizacion general del estado seleccionado y sus municipios. 

nommuniSONR <- c("Aconchi(3)","Aguaprieta(1,218)","Alamos(2,449)","Altar(100)","Arivechi(5)","Arispe(328)")
latSONR<- c(29.80856,31.12377,27.10696,31.14049,30.41040,30.80351)
lonSONR<- c(-110.1930,-109.1359,-108.8002,-111.8986,-110.1879,-111.4823)

vSONR<- tibble(nommuniSONR= nommuniSONR,
            latSONR = latSONR,
            lonSONR = lonSONR)
vSONR

mapSONR <- ggplot(data=SONR) +  # Es el esqueleto de nuestro codigo, el argumento indica el conjunto de datos que se se van a utilizar para el grafico(Mapa)
  geom_polygon(aes(x=long, y=lat, group=group), # 
               fill="mediumseagreen", # Indicando el color del mapa.
               color="black") + # Indica los bordes que delimitan cada municipio.
  theme_minimal() +
  theme(axis.text = element_blank()) +
  labs(title = "Lenguas indigenas habladas en el estado de1 Sonora", # Estoy indicando el titulo del mapa.
       subtitle = "Tepehua,Oluteco,Sayulteco,Popoluca de la sierra,Texistepequeño",
       caption = "Total de hablantes de lenguas indigenas por municipio") + # Aquí va el subtitulo, sin embargo aquí coloco las lenguas presentes en el estado. 
  geom_label(data = vSONR,
             aes(x = lonSONR, y = latSONR),
             label = nommuniSONR)
mapSONR # Este objeto contiene el mapa del estado con los respectivos datos asociados a los municipios.

## 27) Tabasco. ##
coordinates(TABA) # Función para ver las coordinadas de cada municipio.

TABA<- mexEM[mexEM$NAME_1=="Tabasco",] # Aquí se indica con que estado se va a trabajar.
plot(TABA) # Este plot nos permite hacer una visualizacion general del estado seleccionado y sus municipios. 

nommuniTABA <- c("Balanca(1,881)","Cardenas(2,967)","Centla(12,754)","Centro(31,109)","Comalcalco(1,334)","Cunduacan(1,265)")
latTABA<- c(17.82338,18.14947,17.83213,18.35937,17.98917,18.25639)
lonTABA<- c(-91.34223,-93.65805,-92.18153,-92.59402,-92.86794,-93.32957)

vTABA<- tibble(nommuniTABA= nommuniTABA,
            latTABA = latTABA,
            lonTABA = lonTABA)
vTABA

mapTABA <- ggplot(data=TABA) +  # Es el esqueleto de nuestro codigo, el argumento indica el conjunto de datos que se se van a utilizar para el grafico(Mapa)
  geom_polygon(aes(x=long, y=lat, group=group), # 
               fill="navajowhite2", # Indicando el color del mapa.
               color="black") + # Indica los bordes que delimitan cada municipio.
  theme_minimal() +
  theme(axis.text = element_blank()) +
  labs(title = "Lenguas indigenas habladas en el estado de Tabasco", # Estoy indicando el titulo del mapa.
       subtitle = "Nahuatl,Huasteco,Totonaco,Zapoteco",
       caption = "Total de hablantes de lenguas indigenas por municipio") + # Aquí va el subtitulo, sin embargo aquí coloco las lenguas presentes en el estado. 
  geom_label(data = vTABA,
             aes(x = lonTABA, y = latTABA),
             label = nommuniTABA)
mapTABA # Este objeto contiene el mapa del estado con los respectivos datos asociados a los municipios.

## 28) Tamaulipas. ##
coordinates(TAMA) # Función para ver las coordinadas de cada municipio.

TAMA<- mexEM[mexEM$NAME_1=="Tamaulipas",] # Aquí se indica con que estado se va a trabajar.
plot(TAMA) # Este plot nos permite hacer una visualizacion general del estado seleccionado y sus municipios. 

nommuniTAMA <- c("Avasalo(69)","Aldama(423)","Altamira(8,728)","Antiguo M(47)","Burgos(12)","Bustamante(16)")
latTAMA<- c(24.18393,23.00768,22.50656,22.53330,24.97142,23.32679)
lonTAMA<- c(-98.25554,-98.04039,-98.06763,-99.09065,-98.83037,-99.87312)

vTAMA<- tibble(nommuniTAMA= nommuniTAMA,
            latTAMA = latTAMA,
            lonTAMA = lonTAMA)
vTAMA

mapTAMA <- ggplot(data=TAMA) +  # Es el esqueleto de nuestro codigo, el argumento indica el conjunto de datos que se se van a utilizar para el grafico(Mapa)
  geom_polygon(aes(x=long, y=lat, group=group), # 
               fill="olivedrab1", # Indicando el color del mapa.
               color="black") + # Indica los bordes que delimitan cada municipio.
  theme_minimal() +
  theme(axis.text = element_blank()) +
  labs(title = "Lenguas indigenas habladas en el estado de Tamaulipas", # Estoy indicando el titulo del mapa.
       subtitle = "Maya,Huasteco,Zapoteco",
       caption = "Total de hablantes de lenguas indigenas por municipio") + # Aquí va el subtitulo, sin embargo aquí coloco las lenguas presentes en el estado. 
  geom_label(data = vTAMA,
             aes(x = lonTAMA, y = latTAMA),
             label = nommuniTAMA)
mapTAMA # Este objeto contiene el mapa del estado con los respectivos datos asociados a los municipios.

## 29) Tlaxcala. ##
coordinates(TLAXC) # Función para ver las coordinadas de cada municipio.

TLAXC<- mexEM[mexEM$NAME_1=="Tlaxcala",] # Aquí se indica con que estado se va a trabajar.
plot(TLAXC) # Este plot nos permite hacer una visualizacion general del estado seleccionado y sus municipios. 

nommuniTLAXC <- c("Amaxac(729)","Apetatitlan(534)","Atlangatpet(110)","Apisaco(1,914)","Capulpan(409)")
latTLAXC<- c(19.23155,19.46649,19.38611,19.36942,19.44662)
lonTLAXC<- c(-98.06976,-97.74150,-98.09460,-98.12177,-98.05051)

vTLAXC<- tibble(nommuniTLAXC= nommuniTLAXC,
            latTLAXC = latTLAXC,
            lonTLAXC = lonTLAXC)
vTLAXC

mapTLAXC <- ggplot(data=TLAXC) +  # Es el esqueleto de nuestro codigo, el argumento indica el conjunto de datos que se se van a utilizar para el grafico(Mapa)
  geom_polygon(aes(x=long, y=lat, group=group), # 
               fill="lightblue3", # Indicando el color del mapa.
               color="black") + # Indica los bordes que delimitan cada municipio.
  theme_minimal() +
  theme(axis.text = element_blank()) +
  labs(title = "Lenguas indigenas habladas en el estado de Tlaxcala", # Estoy indicando el titulo del mapa.
       subtitle = "Nahuatl",
       caption = "Total de hablantes de lenguas indigenas por municipio") + # Aquí va el subtitulo, sin embargo aquí coloco las lenguas presentes en el estado. 
  geom_label(data = vTLAXC,
             aes(x = lonTLAXC, y = latTLAXC),
             label = nommuniTLAXC)
mapTLAXC # Este objeto contiene el mapa del estado con los respectivos datos asociados a los municipios.

## 30) Veracruz. ##
coordinates(VERA) # Función para ver las coordinadas de cada municipio.

VERA<- mexEM[mexEM$NAME_1=="Veracruz",] # Aquí se indica con que estado se va a trabajar.
plot(VERA) # Este plot nos permite hacer una visualizacion general del estado seleccionado y sus municipios. 

nommuniVERA <- c("Acajete(21)","Acatlán(30)","Acayucan(5,042)","Actopan(107)","Acula(35)")
latVERA<- c(19.65753,19.70921,18.01929,19.55723,18.63228)
lonVERA<- c(-96.96790,-96.77022,-95.06809,-96.51964,-95.78296)

vVERA<- tibble(nommuniVERA= nommuniVERA,
            latVERA = latVERA,
            lonVERA = lonVERA)
vVERA

mapVERA <- ggplot(data=VERA) +  # Es el esqueleto de nuestro codigo, el argumento indica el conjunto de datos que se se van a utilizar para el grafico(Mapa)
  geom_polygon(aes(x=long, y=lat, group=group), # 
               fill="lightcyan", # Indicando el color del mapa.
               color="black") + # Indica los bordes que delimitan cada municipio.
  theme_minimal() +
  theme(axis.text = element_blank()) +
  labs(title = "Lenguas indigenas habladas en el estado de Veracruz", # Estoy indicando el titulo del mapa.
       subtitle = "Tepehua,Oluteco,Sayulteco,Popoluca de la sierra,Texistepequeño",
       caption = "Total de hablantes de lenguas indigenas por municipio") + # Aquí va el subtitulo, sin embargo aquí coloco las lenguas presentes en el estado. 
  geom_label(data = vVERA,
             aes(x = lonVERA, y = latVERA),
             label = nommuniVERA)
mapVERA # Este objeto contiene el mapa del estado con los respectivos datos asociados a los municipios.

## 31) Yucatan. ##
coordinates(YUCA) # Función para ver las coordinadas de cada municipio.

YUCA<- mexEM[mexEM$NAME_1=="Yucatán",] # Aquí se indica con que estado se va a trabajar.
plot(YUCA) # Este plot nos permite hacer una visualizacion general del estado seleccionado y sus municipios. 

nommuniYUCA <- c("Avala(5,570)","Acanseh(11,491)","Akil(10,500)","Baca(2m356)","Bocoba(1,595)")
latYUCA<- c(20.63167,20.84208,20.26408,21.11495,21.00950)
lonYUCA<- c(-89.69830,-89.48989,-89.37745,-89.40391,-89.19117)

vYUCA<- tibble(nommuniYUCA= nommuniYUCA,
            latYUCA = latYUCA,
            lonYUCA = lonYUCA)
vYUCA

mapYUCA <- ggplot(data=YUCA) +  # Es el esqueleto de nuestro codigo, el argumento indica el conjunto de datos que se se van a utilizar para el grafico(Mapa)
  geom_polygon(aes(x=long, y=lat, group=group), # 
               fill="plum3", # Indicando el color del mapa.
               color="black") + # Indica los bordes que delimitan cada municipio.
  theme_minimal() +
  theme(axis.text = element_blank()) +
  labs(title = "Lenguas indigenas habladas en el estado de Yucatan...", # Estoy indicando el titulo del mapa.
       subtitle = "Tepehuan,Huichol,Nahuatl.",
       caption = "Total de hablantes de lenguas indigenas por municipio") + # Aquí va el subtitulo, sin embargo aquí coloco las lenguas presentes en el estado. 
  geom_label(data = vYUCA,
             aes(x = lonYUCA, y = latYUCA),
             label = nommuniYUCA)
mapYUCA # Este objeto contiene el mapa del estado con los respectivos datos asociados a los municipios.

## 32) Zacatecas. ##
coordinates(ZACA) # Función para ver las coordinadas de cada municipio.

ZACA<- mexEM[mexEM$NAME_1=="Zacatecas",] # Aquí se indica con que estado se va a trabajar.
plot(ZACA) # Este plot nos permite hacer una visualizacion general del estado seleccionado y sus municipios. 

nommuniZACA <- c("Apozol(17)","Apulco(3)","Atolinga(16)","Benito(12)","Calera(257)")
latZACA<- c(21.40843,21.42874,21.71250,21.43473,22.90855)
lonZACA<- c(-103.1158,-102.7037,-103.4770,-103.5903,-102.7306)

vZACA<- tibble(nommuniZACA= nommuniZACA,
            latZACA = latZACA,
            lonZACA = lonZACA)
vZACA

mapZACA <- ggplot(data=ZACA) +  # Es el esqueleto de nuestro codigo, el argumento indica el conjunto de datos que se se van a utilizar para el grafico(Mapa)
  geom_polygon(aes(x=long, y=lat, group=group), # 
               fill="lightsteelblue", # Indicando el color del mapa.
               color="black") + # Indica los bordes que delimitan cada municipio.
  theme_minimal() +
  theme(axis.text = element_blank()) +
  labs(title = "Lenguas indigenas habladas en el estado de Zacatecas.", # Estoy indicando el titulo del mapa.
       subtitle = "Tepehuan,Huichol,Nahuatl",
       caption = "Total de hablantes de lenguas indigenas por municipio") + # Aquí va el subtitulo, sin embargo aquí coloco las lenguas presentes en el estado. 
  geom_label(data = vZACA,
             aes(x = lonZACA, y = latZACA),
             label = nommuniZACA)
mapZACA # Este objeto contiene el mapa del estado con los respectivos datos asociados a los municipios.
