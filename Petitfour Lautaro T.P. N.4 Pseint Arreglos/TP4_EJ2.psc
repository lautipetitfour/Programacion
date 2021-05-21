Algoritmo arreglo_20_numeros_alatorios
	definir numeros_a_buscar, numero_encontrado Como Entero
	Dimension  arreglo_num[20] 
	numero_encontrado= 0
	
	Escribir "ESTE ES UN PROGRAMA QUE CARGA 20 NUMEROS ALEATORIOS DEL 1 AL 100 Y .LUEGO NOS DEJA VER EN QUE POSICION DEL ARREGLO ESTA " 

	
	Para contador<-0 Hasta 20-1 Con Paso 1 Hacer
		arreglo_num[contador] = Aleatorio (0,100) //cargar arreglo
		
	Fin Para
	
	Escribir "ESCRIBA EL NUMERO A BUSCAR"
	Leer numeros_a_buscar
	
	Escribir "LOS NUMEROS DEL ARREGLO SON: "
	Para contador<-0 Hasta 20-1 Con Paso 1 Hacer
		//mostrar arreglo
		Escribir arreglo_num[contador]
	Fin Para
	
	Para contador=0 Hasta 20-1 Con Paso 1 Hacer//busqueda del numero
		
		Si arreglo_num[contador]==numeros_a_buscar Entonces
			Escribir "EL NUMERO SE ENCUENTRA EN LA POSICION: ", contador, " DEL ARREGLO"
			numero_encontrado= numero_encontrado+1
		Fin Si
		
		
	Fin Para
	Si numero_encontrado= 0 Entonces
		Escribir "EL NUMERO NO FUE ENCONTRADO"
	
	Fin Si
	
		
	
	
	
	
FinAlgoritmo
