Algoritmo contraseña_8_digitos_aleatoria
	Dimension contraseña[8]
	Definir  contador Como Entero
	definir 	contraseña_final Como caracter
	
	contraseña_final=""
	
	
	Escribir "CREANDO CONTRASEÑA ALEATORIA DE 8 DIGITOS"
	
	Para contador=0 Hasta 8-1 Con Paso 1 Hacer
		contraseña[contador]= (ConvertirATexto(aleatorio(0,9)))//GENERAMOS CADA DIGITO EN EL ARREGLO 
		contraseña_final= Concatenar(contraseña_final, contraseña[contador]) //CONCATENAMOS CADA DIGITO EN UNA VARIABLE PARA MOSTRARLOS TODOS JUNTOS
	
	Fin Para
	
	Escribir "LA CONTRASEÑA GENERADA ES: "
	Escribir  contraseña_final //CONTRASEÑA FINAL
	
	Escribir "LOS DIGITOS DE LA CONTRASEÑA SON:"
	Para contador=0 Hasta 8-1 Con Paso 1 Hacer
		Escribir contador+1 ,"º DIGITO: ", contraseña[contador] //DIGITO DE CADA CONTRASEÑA
		
	Fin Para
	
	

	
	
	
FinAlgoritmo
