Algoritmo contraseņa_8_digitos_aleatoria
	Dimension contraseņa[8]
	Definir  contador Como Entero
	definir 	contraseņa_final Como caracter
	
	contraseņa_final=""
	
	
	Escribir "CREANDO CONTRASEŅA ALEATORIA DE 8 DIGITOS"
	
	Para contador=0 Hasta 8-1 Con Paso 1 Hacer
		contraseņa[contador]= (ConvertirATexto(aleatorio(0,9)))//GENERAMOS CADA DIGITO EN EL ARREGLO 
		contraseņa_final= Concatenar(contraseņa_final, contraseņa[contador]) //CONCATENAMOS CADA DIGITO EN UNA VARIABLE PARA MOSTRARLOS TODOS JUNTOS
	
	Fin Para
	
	Escribir "LA CONTRASEŅA GENERADA ES: "
	Escribir  contraseņa_final //CONTRASEŅA FINAL
	
	Escribir "LOS DIGITOS DE LA CONTRASEŅA SON:"
	Para contador=0 Hasta 8-1 Con Paso 1 Hacer
		Escribir contador+1 ,"š DIGITO: ", contraseņa[contador] //DIGITO DE CADA CONTRASEŅA
		
	Fin Para
	
	

	
	
	
FinAlgoritmo
