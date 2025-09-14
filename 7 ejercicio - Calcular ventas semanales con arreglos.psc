Funcion total_ventas <- calcular_total_ventas ( lista_ventas Por Referencia )
	Definir i , total_ventas Como Real;
	total_ventas<-0;
	Para i<-1 Hasta 7 Con Paso 1 Hacer
		total_ventas<-total_ventas + lista_ventas[i];
	Fin Para
Fin Funcion

Funcion total_ganancias <- calcular_total_ganancias (  lista_dias Por Referencia , lista_ventas por referencia,lista_ganancias Por Referencia  )
	Definir i Como Entero;
	Definir total_ganancias Como Real;
	total_ganancias<-0;
	Para i<-1 Hasta 7 Con Paso 1 Hacer
		total_ganancias<-total_ganancias + lista_ganancias[i];
	Fin Para
Fin Funcion

Funcion mostrar_resultados (  lista_dias Por Referencia , lista_ventas por referencia,lista_ganancias Por Referencia,total_ganancias,total_ventas )
	Definir i Como Entero;
	Mostrar "DIA ------------- VENTAS ------ GANANCIAS ";
	Para i<-1 Hasta 7 Con Paso 1 Hacer
		Mostrar i,".",lista_dias[i]," ---------- ",lista_ventas[i]," ---------- ",lista_ganancias[i];
	Fin Para
	mostrar "El total de ventas semanales es de :",total_ventas;
	mostrar "El total de ganancias semanales es de :",total_ganancias;
Fin Funcion

Funcion modificar_datos ( lista_dias Por Referencia , lista_ventas por referencia,lista_ganancias Por Referencia  )
	Definir i ,seleccion Como Entero;
	Definir nueva_ventas , nueva_ganancias Como Real;
	Mostrar "DIA ------------- VENTAS ------ GANANCIAS ";
	Para i<-1 Hasta 7 Con Paso 1 Hacer
Mostrar i,".",lista_dias[i]," ---------- ",lista_ventas[i]," ---------- ",lista_ganancias[i];
Fin Para
Escribir "ingrese el dato que desea modificar";
Leer seleccion;
Para i<-seleccion Hasta seleccion Con Paso 1 Hacer
	Escribir "Ingrese el nuevo total de ventas para el dia ",lista_dias[i];
	Leer nueva_ventas;
	lista_ventas[i]<-nueva_ventas;
	Escribir "Ingrese el nuevo total de ganancias del dia ",lista_dias[i];
	Leer nueva_ganancias;
	lista_ganancias<-nueva_ganancias;
Fin Para
Fin Funcion

Funcion agregar_datos ( lista_dias Por Referencia , lista_ventas por referencia,lista_ganancias Por Referencia )
	Definir i Como Entero;
	Para i<-1 Hasta 7 Con Paso 1 Hacer
		Escribir "Ingrese el total de ventas del dia ",lista_dias[i];
		Leer lista_ventas[i];
		Escribir "Ingrese el total de ganancias del dia ",lista_dias[i];
		Leer lista_ganancias[i];
	Fin Para
	Mostrar "Datos guardados con exito";
Fin Funcion

Funcion seleccion <- menu 
	Definir seleccion Como Entero;
	Mostrar " ---------- MENU ---------- ";
	Mostrar "1.Agregar datos de ventas diarias";
	Mostrar "2.Modificar datos de ventas diarias ";
	Mostrar "3.Mostrar resumen de venta semanal";
	Mostrar "4.Salir del programa";
	Escribir "Ingrese la opcion que desea seleccionar";
	Leer seleccion;
Fin Funcion

Algoritmo ventas_diarias_con_arreglos
	Definir lista_dias Como Caracter;
	Definir lista_ventas,lista_ganancias,total_ganancias , total_ventas Como Real;
	Definir seleccion Como Entero;
	Dimension lista_dias[7];
	lista_dias[1]<-"lunes";
	lista_dias[2]<-"martes";
	lista_dias[3]<-"miercoles";
	lista_dias[4]<-"jueves";
	lista_dias[5]<-"viernes";
	lista_dias[6]<-"sabado";
	lista_dias[7]<-"domingo";
	Dimension lista_ventas[7];
	Dimension lista_ganancias[7];
	total_ventas<-0;
	total_ganancias<-0;
	Repetir
		seleccion <- menu;
		Segun seleccion Hacer
			1:
				agregar_datos( lista_dias , lista_ventas ,lista_ganancias  );
			2:
				modificar_datos( lista_dias  , lista_ventas,lista_ganancias );
			3:
				total_ganancias <- calcular_total_ganancias(  lista_dias , lista_ventas ,lista_ganancias  );
				total_ventas <- calcular_total_ventas ( lista_ventas );
				mostrar_resultados(  lista_dias , lista_ventas ,lista_ganancias ,total_ganancias,total_ventas);
		Fin Segun
	Hasta Que seleccion=4
FinAlgoritmo
