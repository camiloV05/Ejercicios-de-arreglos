Funcion productos <- calcular_productos (unidades_vendidas Por Referencia )
	Definir productos ,i Como Entero;
	productos<-0;
	Para i<-1 Hasta 3 Con Paso 1 Hacer
		productos<-productos+unidades_vendidas[i];
	Fin Para
Fin Funcion

Funcion total <- calcular_total (precio_individual Por Referencia, unidades_vendidas Por Referencia  )
	Definir total,i Como Real;
	total<-0;
	Para i<-1 Hasta 3 Con Paso 1 Hacer
		total<-total+(precio_individual[i]*unidades_vendidas[i]);
		
	Fin Para
Fin Funcion

Funcion mostrar_resumen ( producto Por Referencia,precio_individual Por Referencia, unidades_vendidas Por Referencia,total,productos )
	Definir i Como Entero;
	Mostrar "PRODUCTO ---------- PRECIO ---------- CANTIDAD ";
	Para i<-1 Hasta 3 Con Paso 1 Hacer
		Mostrar i,".",producto[i]," ---------- ",precio_individual[i]," ---------- ",unidades_vendidas[i];
	Fin Para
	Mostrar "El total de productos vendidos es de :",productos;
	Mostrar "El total de ganancias es de :",total;
Fin Funcion

Funcion modificar_datos ( producto Por Referencia,precio_individual Por Referencia, unidades_vendidas Por Referencia )
	Definir i,seleccion Como Entero;
	Mostrar "PRODUCTO ---------- PRECIO ---------- CANTIDAD ";
	Para i<-1 Hasta 3 Con Paso 1 Hacer
		Mostrar i,".",producto," ---------- ",precio_individual[i]," ---------- ",unidades_vendidas[i];
	Fin Para
	Escribir "Ingrese el dato que desea modificar ";
	Leer seleccion;
	Para i<-seleccion Hasta seleccion Con Paso 1 Hacer
		Escribir "Ingrese el nuevo nombre del producto ",i;
		Leer producto[i];
		Escribir "Ingrese el nuevo precio del producto ",i;
		Leer precio_individual[i];
		Escribir "Ingrese las unidades vendidas del producto ",i;
		Leer unidades_vendidas[i];
	Fin Para
	Mostrar "Datos modificados con exito";
Fin Funcion

Funcion agregar_datos ( producto Por Referencia,precio_individual Por Referencia, unidades_vendidas Por Referencia )
	Definir i Como Entero;
	Para i<-1 Hasta 3 Con Paso 1 Hacer
		Escribir "Ingrese el nombre del producto ",i;
		Leer producto[i];
		Escribir "Ingrese el precio individual del producto",i;
		Leer precio_individual[i];
		Escribir "Ingrese las unidades vendidas del producto ",i;
		Leer unidades_vendidas[i];
	Fin Para
	Mostrar "Datos guardados con exito";
Fin Funcion

Funcion seleccion <- menu
	Definir seleccion Como Entero;
	Mostrar " ---------- MENU ---------- ";
	Mostrar "1.Agregar datos de los tres productos";
	Mostrar "2.Modificar datos ";
	Mostrar "3.Mostrar resumen de ventas";
	Mostrar "4.Salir del programa";
	Escribir "Ingrese la opcion que desea seleccionar";
	Leer seleccion;
FinFuncion

Algoritmo unidades_vendidas_con_arreglos
	Definir producto Como Caracter;
	Definir precio_individual,total ,productos Como Real;
	Definir unidades_vendidas,seleccion Como Entero;
	Dimension producto[3];
	Dimension precio_individual[3];
	Dimension unidades_vendidas[3];
	
	Repetir
		seleccion <- menu;
		Segun seleccion Hacer
			1:
				agregar_datos( producto,precio_individual , unidades_vendidas  );
		    2:
				modificar_datos( producto ,precio_individual , unidades_vendidas );
			3:
				total <- calcular_total(precio_individual , unidades_vendidas );
				productos <- calcular_productos(unidades_vendidas );
				mostrar_resumen( producto ,precio_individual , unidades_vendidas ,total,productos);
		Fin Segun
	Hasta Que seleccion=4
	Mostrar "Finalizando programa";
FinAlgoritmo
