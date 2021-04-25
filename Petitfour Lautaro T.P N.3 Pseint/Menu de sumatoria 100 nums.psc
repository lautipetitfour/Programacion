Algoritmo menu100num
	definir nums como enteros
	definir op como entero
	definir suma como entero
	definir contador como entero
	definir op2 como entero
	Repetir 
		
		escribir "ingrese la estructura deseada"
		escribir "PARA : 1"
		escribir "MIENTRAS : 2"
		escribir "REPETIR : 3"
		escribir "SALIR : 4"
		leer op
		suma = 0
		cont = 0
		Segun op Hacer
			1:
				Para contador <- 1 Hasta 100 Con Paso 1 Hacer
					suma = suma + contador
					escribir suma
				Fin Para
			2:
				Mientras contador <= 100 Hacer
					suma = suma + contador
					contador = contador + 1
					escribir suma
				Fin Mientras
			3:
				Repetir
					suma = suma + contador
					contador = contador + 1
					escribir suma
				Hasta Que contador = 101
				
			De Otro Modo:
					escribir "¡ESPERA!"
			Fin Segun
		escribir "Desea volver al programa?"
		escribir "Si : 1"
		escribir "No : cualquier otro numero"
		leer op2
		escribir "Saliendo..."
	hasta que op2 <> 1
	
	
FinAlgoritmo
