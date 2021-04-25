Algoritmo tabla_1al10
	definir num Como Entero
	definir numtabla como entero
	definir resultado como entero
	escribir "Este programa muestra la tabla de los numeros del 1 al 10"

	num = 1 // INICIO contador de MIENTRAS
	Mientras num <= 10  Hacer
		Para  numtabla <- 1 Hasta 10 Con Paso 1 Hacer
			resultado = num * numtabla // resultado de la tabla
			escribir num "x"  numtabla "=" resultado // mostrar tabla de 1 numero y su resultado 
		Fin Para
		escribir "**************************"
		num = num + 1
	Fin Mientras
FinAlgoritmo
