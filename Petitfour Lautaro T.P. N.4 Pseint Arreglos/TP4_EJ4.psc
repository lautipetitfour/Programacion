Algoritmo contrase�a_8_digitos_aleatoria
	Dimension contrase�a[8]
	Definir  contador Como Entero
	definir 	contrase�a_final Como caracter
	
	contrase�a_final=""
	
	
	Escribir "CREANDO CONTRASE�A ALEATORIA DE 8 DIGITOS"
	
	Para contador=0 Hasta 8-1 Con Paso 1 Hacer
		contrase�a[contador]= (ConvertirATexto(aleatorio(0,9)))//GENERAMOS CADA DIGITO EN EL ARREGLO 
		contrase�a_final= Concatenar(contrase�a_final, contrase�a[contador]) //CONCATENAMOS CADA DIGITO EN UNA VARIABLE PARA MOSTRARLOS TODOS JUNTOS
	
	Fin Para
	
	Escribir "LA CONTRASE�A GENERADA ES: "
	Escribir  contrase�a_final //CONTRASE�A FINAL
	
	Escribir "LOS DIGITOS DE LA CONTRASE�A SON:"
	Para contador=0 Hasta 8-1 Con Paso 1 Hacer
		Escribir contador+1 ,"� DIGITO: ", contrase�a[contador] //DIGITO DE CADA CONTRASE�A
		
	Fin Para
	
	

	
	
	
FinAlgoritmo
