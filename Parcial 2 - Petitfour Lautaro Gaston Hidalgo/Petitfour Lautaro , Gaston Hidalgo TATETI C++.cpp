// Petitfour Lautaro, Gaston Hidalgo.
// TATETI
#include <iostream>
#include <stdlib.h>
using namespace std;
char tablero[3][3]={{'-','-','-'}, // asi se va a ver el tablero la inicio del juego
					{'-','-','-'},
					{'-','-','-'}};
void inicializarTab (){//inicializacion del tablero de tateti
	for(int i=0 ; i<3 ;i++){
		for(int j=0; j<3 ;j++){
			tablero[i][j] = '-';
			
		}
	}
}
void mostrarTab(){//MUESTRA EL TABLERO
	for(int i=0 ; i<3 ;i++){
		for(int j=0; j<3 ;j++){
			cout<<tablero[i][j]<< "  ";
			
		}
		cout<<endl;//salto de linea para q se vea bien el tablero
	}
}
bool colocar_ficha (int x, int y , char f){//colocacion de fichas
	if (tablero[x][y] == '-'){
		tablero[x][y] = f;
		system("cls"); //limpiado de pantalla
		mostrarTab();
		return true;
	}
	else{
		return false;
	}
}
bool resultado_juego(){//Indica el ganador
 int cont = 0;
	//tateti hechos en posiciones horizontales
	if (tablero[0][0] == tablero [0][1] && tablero[0][1] && tablero[0][2]){
		if (tablero[0][0] == 'X') cout<<"¡Gano el jugador 1!";                        				 // 0.0  0.1 0.2
		if (tablero[0][0] == 'O') cout<<"¡Gano el jugador 2!";                        				// 1.0  1.1  1.2
	}                                                                                              // 2.0  2.1  2.2
	if (tablero[1][0] == tablero [1][1] && tablero[1][1] && tablero[1][2]){
		if (tablero[1][0] == 'X') cout<<"¡Gano el jugador 1!"; 
		if (tablero[1][0] == 'O') cout<<"¡Gano el jugador 2!";
	}
	if (tablero[2][0] == tablero [2][1] && tablero[2][1] && tablero[2][2]){
		if (tablero[2][0] == 'X') cout<<"¡Gano el jugador 1!"; 
		if (tablero[2][0] == 'O') cout<<"¡Gano el jugador 2!"; 
	}
	
	
	//tateti hechos en posiciones verticales
	if (tablero[0][0] == tablero[1][0] && tablero[1][0] == tablero [2][0]){
		if (tablero[0][0] == 'X') cout<<"¡Gano el jugador 1!";
		if (tablero[0][0] == 'O') cout<<"¡Gano el jugador 2!";	
	}
	if (tablero[0][1] == tablero[1][1] && tablero[1][1] == tablero [2][1]){
		if (tablero[0][1] == 'X') cout<<"¡Gano el jugador 1!";
		if (tablero[0][1] == 'O') cout<<"¡Gano el jugador 2!";
	}
	if (tablero[0][2]== tablero[1][2] && tablero[1][2] == tablero [2][2]){
		if (tablero[0][2] == 'X') cout<<"¡Gano el jugador 1!";
		if (tablero[0][2] == 'O') cout<<"¡Gano el jugador 2!";
	}
	
	//tateti hechos en diagonal                                                                     // 0.0  0.1 0.2
	if (tablero[0][0] == tablero[1][1] && tablero[1][1] == tablero [2][2]){                         // 1.0  1.1 1.2
		if (tablero[0][0] == 'X') cout<<"¡Gano el jugador 1!";                                      // 2.0  2.1 2.2
		if (tablero[0][0] == 'O') cout<<"¡Gano el jugador 2!";	
	}
	if (tablero[2][0] == tablero[1][1] && tablero[1][1] == tablero [0][2]){
			
		if (tablero[2][0] == 'X')cout<<"¡Gano el jugador 1!";
		if (tablero[2][0] == 'O')cout<<"¡Gano el jugador 2!";
	}
	
		
		
		
	//casillas libres
	
	for (int i= 0; i<3 ; i++){
			for (int j = 0 ; j<3 ; j++){
				if (tablero[i][j]== '-'){
				cont++;
				}
		}
	}
	if (cont == 0 ){
		system("cls");
		cout<<"¡EMPATE!";
		return true;
		}
}

void jugar (){//juego
		int turno = 1;
		int posicion;
		char aux;
	while (resultado_juego () == false ){
	 cout<<"TURNO DEL JUGADOR : "<<endl;
	 cout<<turno<<endl;
	 cout<<"este es el orden de las posiciones para colocar fichas"<<endl;
	 cout<<"1,2,3"<<endl<<"4,5,6"<<endl<<"7,8,9"<<endl;
	 cout<<"Ingrese la posicion en la que de sea colocar la ficha"<<endl;
	 cin>>posicion;
	 cout<<endl;
		switch(posicion){
			//posicion 0.0
			case 1:                               
				char aux;
				if (turno == 1){
					 aux = 'X';
				}
				
				else{
					aux = 'O';
				} 
				
				if(colocar_ficha(0, 0, aux)){
				
					if (turno == 1){
						turno = 2;
					}
					else turno = 1;
				}	
			break;
			//posicion 0.1
			case 2:
				
				if (turno == 1) aux = 'X';
				else aux = 'O';
				
				if(colocar_ficha(0, 1, aux)){
				
					if (turno == 1){
						turno = 2;
					}
					
					else turno = 1;
				}	
			break;	
			//posicion 0.2
		 	case 3:
				
				if (turno == 1) aux = 'X';
				else aux = 'O';
				
				if(colocar_ficha(0, 2, aux)){
				
					if (turno == 1){
						turno = 2;
					}
					
					else turno = 1;
				}	
			break;
			//posicion 1.0
			case 4:
				
				if (turno == 1) aux = 'X';
				else aux = 'O';
				
				if(colocar_ficha(1, 0, aux)){
				
					if (turno == 1){
						turno = 2;
					}
					
					else turno = 1;
				}	
			break;
			//posicion 1.1
			case 5:
				
				if (turno == 1) aux = 'X';
				else aux = 'O';
				
				if(colocar_ficha(1, 1, aux)){
				
					if (turno == 1){
						turno = 2;
					}
					
					else turno = 1;
				}	
			break;
			//posicion 1.2
			case 6:
				
				if (turno == 1) aux = 'X';
				else aux = 'O';
				
				if(colocar_ficha(1, 2, aux)){
				
					if (turno == 1){
						turno = 2;
					}
					
					else turno = 1;
				}	
			break;
			//posicion 2.0
			case 7:
				
				if (turno == 1) aux = 'X';
				else aux = 'O';
				
				if(colocar_ficha(2, 0, aux)){
				
					if (turno == 1){
						turno = 2;
					}
					
					else turno = 1;
				}	
			break;
			//posicion 2.1
			case 8:
				
				if (turno == 1) aux = 'X';
				else aux = 'O';
				
				if(colocar_ficha(2, 1, aux)){
				
					if (turno == 1){
						turno = 2;
					}
					
					else turno = 1;
				}	
			break;
			//posicion 2.2
			case 9:
				
				if (turno == 1) aux = 'X';
				else aux = 'O';
				
				if(colocar_ficha(2, 2, aux)){
				
					if (turno == 1){
						turno = 2;
					}
					
					else turno = 1;
				}	
			break;
		}
	}
}
	
int main () {
	
	inicializarTab();
	mostrarTab();	
	jugar();
	
		
			
	return 0;
}
