Algoritmo op_basicas
	definir n1 Como real // numero 1
	definir n2 Como real // numero 2
	definir resultado como real
	definir op_segun como entero
	definir op_repetir como entero
	
	Repetir
		escribir "Ingrese la operacion que desea realizar"
		escribir "Suma : 1"
		escribir "Resta : 2"
		escribir "Multiplicacion : 3"
		escribir "division : 4"
		escribir "SALIR : otro numero"
		leer op_segun
		Segun op_segun Hacer
			1:
				escribir "ingrese el primer numero"
				leer n1
				escribir "ingrese el segundo numero"
				leer n2
				resultado = n1 + n2
				escribir "La opcion elegida es SUMA"
				escribir "***********"
				escribir "El resultado es " resultado
				escribir "***********"
			2:
				escribir "ingrese el primer numero"
				leer n1
				escribir "ingrese el segundo numero"
				leer n2
				resultado = n1 - n2
				escribir "La opcion elegida es RESTA"
				escribir "***********"
				escribir "El resultado es " resultado
				escribir "***********"
			3:
				escribir "ingrese el primer numero"
				leer n1
				escribir "ingrese el segundo numero"
				leer n2
				resultado = n1 * n2
				escribir "La opcion elegida es MULT"
				escribir "***********"
				escribir "El resultado es " resultado
				escribir "***********"
			4:
				escribir "ingrese el primer numero"
				leer n1
				escribir "ingrese el segundo numero"
				leer n2
				si n1 <= 0 o n2 <= 0 Entonces
					escribir "La opcion elegida es DIVIDIR"
					escribir "***********"
					escribir "¡No se puede dividir por Cero!"
					escribir "***********"
				sino 
					resultado = n1 / n2
					escribir "La opcion elegida es DIVIDIR"
					escribir "***********"
					escribir "El resultado es " resultado
					escribir "***********"
				FinSi
				
			De Otro Modo:
				escribir "¡ESPERA!"
		Fin Segun
		escribir "desea salir del programa?"
		escribir "Si : 1"
		escribir "No : 2"
		leer op_repetir
	Hasta Que  op_repetir <> 2
	
FinAlgoritmo
