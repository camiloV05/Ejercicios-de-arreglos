Funcion total_hojas <- calcular_total_hojas ( lista_hojas Por Referencia )
	Definir i , total_hojas Como Real;
	total_hojas<-0;
	Para i<-1 Hasta 7 Con Paso 1 Hacer
		total_hojas<-total_hojas + lista_hojas[i];
	Fin Para
Fin Funcion

Funcion total_ganancias <- calcular_total_ganancias (  lista_dias Por Referencia , lista_hojas por referencia,precio  )
	Definir i Como Entero;
	Definir total_ganancias Como Real;
	total_ganancias<-0;
	Para i<-1 Hasta 7 Con Paso 1 Hacer
		total_ganancias<-total_ganancias + ( lista_hojas[i]*precio);
	Fin Para
Fin Funcion

Funcion mostrar_resultados (  lista_dias Por Referencia , lista_hojas por referencia,total_ganancias,total_hojas )
	Definir i Como Entero;
	Mostrar "DIA ------------- IMPRESIONES";
	Para i<-1 Hasta 7 Con Paso 1 Hacer
		Mostrar i,".",lista_dias[i]," ---------- ",lista_hojas[i];
	Fin Para
	mostrar "El total de impresiones semanales es de :",total_hojas;
	mostrar "El total de ganancias semanales es de :",total_ganancias;
Fin Funcion


Funcion modificar_datos ( lista_dias Por Referencia , lista_hojas por referencia )
	Definir i ,seleccion Como Entero;
	Definir nueva_hojas , nueva_ganancias Como Real;
	Mostrar "DIA ------------- IMPRESIONES";
	Para i<-1 Hasta 7 Con Paso 1 Hacer
		Mostrar i,".",lista_dias[i]," ---------- ",lista_hojas[i]," ---------- ";
	Fin Para
	Escribir "ingrese el dato que desea modificar";
	Leer seleccion;
	Para i<-seleccion Hasta seleccion Con Paso 1 Hacer
		Escribir "Ingrese el nuevo total de ventas para el dia ",lista_dias[i];
		Leer nueva_ventas;
		lista_hojas[i]<-nueva_hojas;
	Fin Para
Fin Funcion

Funcion precio<-agregar_datos ( lista_dias Por Referencia , lista_hojas por referencia )
	Definir i Como Entero;
	Definir precio Como Real;
	Escribir "Ingrese el precio de cada impresion";
	Leer precio;
	Para i<-1 Hasta 7 Con Paso 1 Hacer
		Escribir "Ingrese el total de impresiones del dia ",lista_dias[i];
		Leer lista_hojas[i];
	Fin Para
	Mostrar "Datos guardados con exito";
Fin Funcion

Funcion seleccion <- menu 
	Definir seleccion Como Entero;
	Mostrar " ---------- MENU ---------- ";
	Mostrar "1.Agregar datos de impresiones diarias";
	Mostrar "2.Modificar datos de impresiones diarias ";
	Mostrar "3.Mostrar resumen de impresiones semanal";
	Mostrar "4.Salir del programa";
	Escribir "Ingrese la opcion que desea seleccionar";
	Leer seleccion;
Fin Funcion

Algoritmo calcular_costo_de_impresion_con_arreglos
	Definir lista_dias Como Caracter;
	Definir lista_hojas,total_ganancias,total_hojas ,precio Como Real;
	Definir seleccion Como Entero;
	Dimension lista_dias[7];
	lista_dias[1]<-"lunes";
	lista_dias[2]<-"martes";
	lista_dias[3]<-"miercoles";
	lista_dias[4]<-"jueves";
	lista_dias[5]<-"viernes";
	lista_dias[6]<-"sabado";
	lista_dias[7]<-"domingo";
	Dimension lista_hojas[7];
	total_hojas<-0;
	total_ganancias<-0;
	Repetir
		seleccion <- menu;
		Segun seleccion Hacer
			1:
				precio<-agregar_datos( lista_dias , lista_hojas );
			2:
				modificar_datos( lista_dias  , lista_hojas );
			3:
				total_ganancias <- calcular_total_ganancias(  lista_dias , lista_hojas,precio );
				total_hojas <- calcular_total_hojas ( lista_hojas );
				mostrar_resultados(  lista_dias , lista_hojas ,total_ganancias,total_hojas);
		Fin Segun
	Hasta Que seleccion=4
FinAlgoritmo
