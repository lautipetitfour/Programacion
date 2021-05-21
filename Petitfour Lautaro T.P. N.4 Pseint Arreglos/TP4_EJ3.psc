Algoritmo NumerosPrimos
	Definir i Como Entero
	definir k Como Entero
	definir indice_numeros_primos como entero
	tamanio_arreglo = 100
	Dimension arreglo_numeros_primos[tamanio_arreglo]
	// Calculo numeros primos
	contador_divisible = 0
	indice_numeros_primos= 0
	Escribir "LOS NUMEROS PRIMOS HASTA EL 100 SON:"
	Para i<- 1 Hasta 99 con paso 1 hacer
		contador_divisible = 0
		Para k = 1 Hasta i con paso 1 Hacer //NUMERO NO PRIMO
			Si i MOD k = 0 Entonces
				contador_divisible = contador_divisible + 1
			FinSi
			
		FinPara
		si contador_divisible == 2 Entonces// NUMEROS PRIMOS
			arreglo_numeros_primos[indice_numeros_primos] = i
			
			indice_numeros_primos = indice_numeros_primos + 1;
		
		FinSi
		
		
		
		
	FinPara
	Escribir 1
	Para i=0 Hasta indice_numeros_primos-1 Con Paso 1 Hacer//MOSTRANDO NUMEROS PRIMOS
		Escribir  arreglo_numeros_primos[i]
	Fin Para
	
FinAlgoritmo
