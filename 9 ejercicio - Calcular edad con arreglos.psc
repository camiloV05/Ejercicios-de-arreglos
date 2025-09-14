Funcion mostrar_datos ( lista_nombre Por Referencia,lista_edad Por Referencia,lista_a�o Por Referencia )
	Definir i Como Entero;
	mostrar " NOMBRE ----- A�O ----- EDAD ";
	Para i<-1 Hasta 3 Con Paso 1 Hacer
		mostrar	i,".",lista_nombre[i]," ----- ",lista_a�o[i]," ----- ",lista_edad[i];
	Fin Para
Fin Funcion

Funcion calcular_edad (  lista_nombre Por Referencia,lista_edad Por Referencia,lista_a�o Por Referencia )
	Definir i Como Entero;
	Para i<-1 Hasta 3 Con Paso 1 Hacer
		lista_edad[i]<- 2025-lista_a�o[i];
	Fin Para
Fin Funcion

Funcion modificar_Datos ( lista_nombre Por Referencia,lista_edad Por Referencia,lista_a�o Por Referencia )
	Definir i , seleccion Como Entero;
	Para i<-1 Hasta 3 Con Paso 1 Hacer
	mostrar	i,".",lista_nombre[i]," ----- ",lista_a�o[i];
Fin Para
Escribir "Ingrese el dato que desea modificar";
Leer seleccion;
Para i<-seleccion Hasta seleccion Con Paso 1 Hacer
	Escribir "Ingrese el nuevo nombre para la persona ",i;
	Leer lista_nombre[i];
	Escribir "Ingrese el nuevo a�o de nacimiento de la persona ",i;
	Leer lista_a�o[i];
Fin Para
Mostrar "Datos modificados con exito";
Fin Funcion

Funcion  agregar_datos ( lista_nombre Por Referencia,lista_edad Por Referencia,lista_a�o Por Referencia )
	Definir i Como Entero;
	Para i<-1 Hasta 3 Con Paso 1 Hacer
		Escribir "Ingrese el nombre de la persona ",i;
		Leer lista_nombre[i];
		Escribir "Ingrese el a�o de nacimiento de la persona ",i;
		leer lista_a�o[i];
	Fin Para
	Mostrar "Datos guardados con exito";
Fin Funcion

Funcion seleccion<-menu 
	Definir seleccion Como Entero;
	Mostrar " ---------- MENU ---------- ";
	Mostrar "1.Agregar datos ";
	Mostrar "2.Modificar datos";
	Mostrar "3.Calcular edad ";
	Mostrar "4.Salir del programa";
	Escribir "Ingrese la opcion que desea seleccionar";
	Leer seleccion;
Fin Funcion

Algoritmo calcular_edad_con_arreglo
	Definir lista_nombre Como Caracter;
	Definir lista_a�o ,lista_edad Como real;
	Definir seleccion Como Entero;
	Dimension lista_nombre[3];
	Dimension lista_edad[3];
	Dimension lista_a�o[3];
	
	Repetir
		seleccion<-menu;
		Segun seleccion Hacer
			1:
				agregar_datos( lista_nombre ,lista_edad ,lista_a�o  );
			2:
				modificar_Datos( lista_nombre ,lista_edad,lista_a�o  );
			3:
				calcular_edad(  lista_nombre ,lista_edad ,lista_a�o  );
				mostrar_datos( lista_nombre ,lista_edad ,lista_a�o );
		Fin Segun
	Hasta Que seleccion=4
FinAlgoritmo
