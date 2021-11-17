# Nota: Se necesitan correr los scrips de Mapas y de Datos de cada estado. 




## PROYECTO BIOINFORMATICA ##
# Moreno Juarez Ernesto # 

## Nombre del Proyecto: "Distribución de las 68 lenguas indigenas en México."

# Objetivo: La finalidad de este proyecto es compilar todos los registros 
# hechos por la INEGI sobre las diferentes lenguas indigenas habladas en el 
# pais. El proyecto se dividie en 3 partes. La primera parte esta sentrada 
# en ver la presencia de lenguas indigenas dependiendo del estado que se 
# consulte. La segunda parte es parecida a la consulta de la primera
# sin embargo esta se da por medio de busquedas en las que 
# dependiendo de la lengua, se muestra un mapa con los estados del pais en los
# que se habla, la se segunda parte esta destinada a un enfoque más panoramico
# ya que se plasma la distribución de las 11 familias linguisticas indigenas por
# el pais.

# PRIMERA SECCION "EN ESTE ESTADO SE HABLA...", este es por consulta simple.

ConsultaS <- function(){
  estadoS <- readline(prompt = "Ingresa el estado para una consulta simple:")
  
  estadoS1 <-if(estadoS == "Aguascalientes"){print(aguasc)}else if
  (estadoS == "Baja california"){print(baj)}else if
  (estadoS == "Baja california sur"){print(bajsur)}else if
  (estadoS == "Chiapas"){print(chia)}else if
  (estadoS == "Guanajuato"){print(guan)}else if
  (estadoS == "Cdmx"){print(cdmx)}else if
  (estadoS == "Jalisco"){print(jal)}else if
  (estadoS == "Estado de mexico"){print(estmex)}else if
  (estadoS == "Nayarit"){print(nay)}else if
  (estadoS == "Nuevo leon"){print(nuev)}else if
  (estadoS == "San luis potosi"){print(slp)}else if
  (estadoS == "Sinaloa"){print(sin)}else if
  (estadoS == "Tlaxcala"){print(tlax)}else if
  (estadoS == "Campeche"){print(cam)}else if
  (estadoS == "Guerrero"){print(gue)}else if
  (estadoS == "Oaxaca"){print(oax)}else if
  (estadoS == "Sonora"){print(son)}else if
  (estadoS == "Guerrero"){print(gue)}else if
  (estadoS == "Veracruz"){print(ver)}else if
  (estadoS == "Coahuila"){print(coa)}else if
  (estadoS == "Colima"){print(col)}else if
  (estadoS == "Durango"){print(dur)}else if
  (estadoS == "Guerrero"){print(gue)}else if
  (estadoS == "Hidalgo"){print(hid)}else if
  (estadoS == "Michoacan"){print(mich)}else if
  (estadoS == "Morelos"){print(more)}else if
  (estadoS == "Puebla"){print(pueb)}else if
  (estadoS == "Queretaro"){print(quere)}else if
  (estadoS == "Quintana roo"){print(quinroo)}else if
  (estadoS == "Tabasco"){print(tab)}else if
  (estadoS == "Tamaulipas"){print(tam)}else if
  (estadoS == "Yucatan"){print(yuc)}else if
  (estadoS == "Zacatecas"){print(zac)}else {print("Asegurese de insertar bien el nombre del estado")}
}

# SEGUNDA SECCION "MAPAS Y DISTRIBUCIÓN GEOGRAFICA DE LENGUAS INDIGENAS" este es por consulta  avanzada.

ConsultaAV <- function(){
  estadoA <- readline(prompt = "Ingresa el estado para una consulta Avanzada:")
  
  estadoA1 <-if(estadoA == "Aguascalientes"){plot(mapaguas)}else if
  (estadoA == "Baja california"){plot(mapbaj)}else if
  (estadoA == "Baja california sur"){plot(mapbajsur)}else if
  (estadoA == "Campeche"){plot(mapcampe)}else if
  (estadoA == "Chiapas"){plot(mapchiap)}else if
  (estadoA == "Chihuahua"){plot(mapchiap)}else if
  (estadoA == "Ciudad de mexico"){plot(mapcdmxx)}else if
  (estadoA == "Coahuila"){plot(mapcoahuila)}else if
  (estadoA == "Colima"){plot(mapCOLIM)}else if
  (estadoA == "Durango"){plot(mapDUR)}else if
  (estadoA == "Estado de mexico"){plot(mapEST)}else if
  (estadoA == "Guanajuato"){plot(mapGUANA)}else if
  (estadoA == "Guerrero"){plot(mapGUERRE)}else if
  (estadoA == "Hidalgo"){plot(mapHIDA)}else if
  (estadoA == "Jalisco"){plot(mapJALI)}else if
  (estadoA == "Michoacan"){plot(mapMICHO)}else if
  (estadoA == "Morelos"){plot(mapMORE)}else if
  (estadoA == "Nayarit"){plot(mapNAYAR)}else if
  (estadoA == "Nuevo leon"){plot(mapNUEVL)}else if
  (estadoA == "Oaxaca"){plot(mapOAXAC)}else if
  (estadoA == "Puebla"){plot(mapPUEB)}else if
  (estadoA == "Queretaro"){plot(mapQUERET)}else if
  (estadoA == "Quintana roo"){plot(mapQUINTR)}else if
  (estadoA == "San luis potosi"){plot(mapSANLP)}else if
  (estadoA == "Sinaloa"){plot(mapSINL)}else if
  (estadoA == "Sonora"){plot(mapSINL)}else if
  (estadoA == "Tabasco"){plot(mapTABA)}else if
  (estadoA == "Tamaulipas"){plot(mapTAMA)}else if
  (estadoA == "Tlaxcala"){plot(mapTLAXC)}else if
  (estadoA == "Veracruz"){plot(mapVERA)}else if
  (estadoA == "Yucatan"){plot(mapYUCA)}else if
  (estadoA == "Zacatecas"){plot(mapZACA)}else {print("Asegurese de insertar bien el nombre del estado")}
}


# TERCERA SECCION "DISTRIBUCIÓN DE LAS 11 FAMILIAS LINGUISTICAS INDIGENAS EN LOS ESTADOS DE MEXICO" este es por consulta a nivel nacional.

ConsultaFL <- function(){
  lengua <- readline(prompt = "Ingresa la Familia linguistica para ver su distribución en el pais:")
  
  lenguaF <-if(lengua == "Algica"){plot(mapalgica)}else if
  (lengua == "Yuto-nahua"){plot(mapYUTO)}else if
  (lengua == "Cochimi-yumana"){plot(mapCOCHIMI)}else if
  (lengua == "Seri"){plot(mapSERI)}else if
  (lengua == "Oto-mangue"){plot(mapOTO)}else if
  (lengua == "Maya"){plot(mapMAYA)}else if
  (lengua == "Totonaco-tepehua"){plot(mapTOTO)}else if
  (lengua == "Tarasca"){plot(maptarasca)}else if
  (lengua == "Mixe-zoque"){plot(mapMIXE)}else if
  (lengua == "Chontal de oaxaca"){plot(mapCHON)}else if
  (lengua == "Huave"){plot(mapHUAVE)} else {print("Asegurese de insertar bien el nombre de la lengua.")}
}


















