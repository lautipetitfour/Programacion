Algoritmo cien_numeros_pares_arreglo
	
	Dimension numeros_pares_arreglo[100]
	definir contador , numero_par Como Entero
	numero_par=0
	Para contador=0 Hasta 100-1 Con Paso 1 Hacer
		
		numero_par= numero_par +2//ACUMULADOR SUMA DE A 2 PARA OBTENER NUMEROS PARES
		numeros_pares_arreglo[contador]= numero_par
		Escribir"EN LA POSICION DEL ARREGLO " contador " ESTA EL NUMERO PAR: " numeros_pares_arreglo[contador]//MOSTRANDO NUMEROS
		
	Fin Para
	
	
FinAlgoritmo
