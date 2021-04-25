Algoritmo mayor_menor_random
	definir num como entero
	definir nummayor Como Entero
	definir nummenor Como Entero
	nummenor = 9
	
	para cont<- 1 hasta 10 con paso 1 hacer
		num = azar(10)
		escribir num
		si num > nummayor Entonces
			nummayor = num
		sino si num < nummenor entonces
				nummenor = num
			sino
			finSi
		FinSi
	finpara
	escribir "el numero mayor es : " nummayor
	escribir "el numero menor es :" nummenor 
FinAlgoritmo
