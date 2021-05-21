Algoritmo ta_te_ti

    Dimension tabla_1[3,3]
    Dimension tabla_2[3,3]
    Para i<-1 Hasta 3 Hacer
        Para j<-1 Hasta 3 Hacer
            tabla_1[i,j]<-0
            tabla_2[i,j]<-" "
        FinPara
    FinPara
    turno_jugador_1ugador_1<-Verdadero
    terminado<-Falso
    ganador<-Falso
    cant_turnos<-0
	
	
	
	
	
	Mientras ~ Terminado hacer
        
        // dibuja el tablero
		Borrar Pantalla
		Escribir " _____  _      _____ _____   _____ ___ "
		Escribir "|_   _|/ \    |_   _| ____| |_   _|_ _|"
		Escribir "  | | / _ \     | | |  _|     | |  | | "
		Escribir "  | |/ ___ \    | | | |___    | |  | | "
		Escribir  "  |_/_/   \_\   |_| |_____|   |_| |___|"
      
        Escribir " "
        Escribir "      ||     ||     "
        Escribir "   ",tabla_2[1,1],"  ||  ",tabla_2[1,2],"  ||  ",tabla_2[1,3]
        Escribir "     (7)||    (8)||    (9)"
        Escribir " =====++=====++======"
        Escribir "      ||     ||     "
        Escribir "   ",tabla_2[2,1],"  ||  ",tabla_2[2,2],"  ||  ",tabla_2[2,3]
        Escribir "     (4)||    (5)||    (6)"
        Escribir " =====++=====++======"
        Escribir "      ||     ||     "
        Escribir "   ",tabla_2[3,1],"  ||  ",tabla_2[3,2],"  ||  ",tabla_2[3,3]
        Escribir "     (1)||    (2)||    (3)"
        Escribir " "
		
        
        Si ~ ganador y cant_turnos<9 Entonces
            
            // carga auxiliares segun a qué jugador le toca
            Si turno_jugador_1 Entonces
                Ficha<-'O'; Valor<- 1; Objetivo<-1
                Escribir "Turno del jugador 1 (O)"
            Sino
                Ficha<-'X'; Valor<- 2; Objetivo<-8
                Escribir "Turno del jugador 2 (X)"
            FinSi
            
            // pide la posición para colocar la ficha y la valida
            Escribir "Ingrese la Posición (1-9):"
            
            Repetir
                Leer Pos
                Si Pos<1 o Pos>9 Entonces
                    Escribir "Posición incorrecta, ingrese nuevamente: "
                    Pos<-99;
                Sino
                    i<-trunc((Pos-1)/3)+1
                    j<-((Pos-1) MOD 3)+1
                    Si tabla_1[i,j]<>0 Entonces
                        pos<-99
                        Escribir "Posición incorrecta, ingrese nuevamente: "
                    FinSi
                FinSi
            Hasta Que Pos<>99
            // guarda la ficha en la matriz tab2 y el valor en tab1
            cant_turnos=cant_turnos+1
            tabla_1[i,j]<-Valor
            tabla_2[i,j]<-Ficha
            
            // verifica si ganó, buscando que el producto de las fichas en el tablero de Objetivo
            aux_d1<-1; aux_d2<-1
            Para i<-1 hasta 3 hacer
                aux_i<-1; aux_j<-1
                aux_d1<-aux_d1*tabla_1[i,i]
                aux_d2<-aux_d2*tabla_1[i,4-i]
                Para j<-1 hasta 3 hacer
                    aux_i<-aux_i*tabla_1[i,j]
                    aux_j<-aux_j*tabla_1[j,i]
                FinPara
                Si aux_i=Objetivo o aux_j=Objetivo Entonces
                    ganador<-Verdadero
                FinSi
            FinPara
            Si aux_d1=Objetivo o aux_d2=Objetivo Entonces
                ganador<-Verdadero
            Sino
                turno_jugador_1 <- ~ turno_jugador_1
            FinSi
            
        Sino
            
            Si ganador Entonces
                Escribir "Ganador: "
                Si turno_jugador_1 Entonces
                    Escribir "Jugador 1!"
                Sino
                    Escribir "Jugador 2!"
                FinSi
            Sino
                Escribir "Empate!"
            FinSi
            Terminado<-Verdadero
            
        FinSi
        
    FinMientras
	Escribir "  _____     .    __  __ ______    ______      ________ _____  _ "
	Escribir " / ____|   /\   |  \/  |  ____|  / __ \ \    / /  ____|  __ \| |"
	Escribir "| |  __   /  \  | \  / | |__    | |  | \ \  / /| |__  | |__) | |"
	Escribir "| | |_ | / /\ \ | |\/| |  __|   | |  | |\ \/ / |  __| |  _  /| |"
	Escribir "| |__| |/ ____ \| |  | | |____  | |__| | \  /  | |____| | \ \|_|"
	Escribir " \_____/_/    \_\_|  |_|______|  \____/   \/   |______|_|  \_(_)"
	
    
FinProceso
	

