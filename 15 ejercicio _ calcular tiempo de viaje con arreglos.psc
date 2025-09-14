Funcion total <- calcular_total (  lista_tiempo por referencia ,cantidad )
	Definir total ,i Como Real;
	total<-0;
	Para i<-1 Hasta cantidad Con Paso 1 Hacer
		total<-total+lista_tiempo[i];
	Fin Para
	
Fin Funcion

Funcion  mostrar_datos ( lista_tiempo por referencia ,cantidad ,total)
	Definir i Como Entero;
	Mostrar " ----- RESUMEN ----- ";
	Para i<-1 Hasta cantidad Con Paso 1 Hacer
		Mostrar i,".Tiempo ",i,":",lista_tiempo[i]," minutos";
	Fin Para
	Mostrar "El tiempo total de conduccion es de ",total," minutos ";
Fin Funcion

Funcion modificar_datos (  lista_tiempo por referencia ,cantidad )
	Definir i,seleccion Como Entero;
	Para i<-1 Hasta cantidad Con Paso 1 Hacer
		Mostrar i,".Tiempo ",i,":",lista_tiempo[i]," minutos";
	Fin Para
	Escribir "Ingrese el dato que desea modificar";
	Leer seleccion;
	Para i<-seleccion Hasta seleccion Con Paso 1 Hacer
		Escribir "Ingrese el nuevo tiempo para el recorrido ",i;
		Leer lista_tiempo[i];
	Fin Para
	Mostrar "Datos guardados con exito";
Fin Funcion

Funcion ingresar_datos ( lista_tiempo por referencia ,cantidad)
	Definir i Como Entero;
	
	Para i<-1 Hasta cantidad Con Paso 1 Hacer
		Escribir "Cuanto tiempo condujo durante el tiempo ",i," (en minutos)";
		Leer lista_tiempo[i];
	Fin Para
	
Fin Funcion

Funcion seleccion<-menu
	definir seleccion Como Entero;
	Mostrar " ---------- MENU ---------- ";
	Mostrar "1.Agregar datos del viaje";
	Mostrar "2.Modificar datos del viaje";
	Mostrar "3.Mostrar resultados del viaje";
	Mostrar "4.Salir del programa";
	Escribir "Ingrese la opcionque desea seleccionar";
	Leer seleccion;
	
Fin Funcion

Algoritmo calcular_tiempo_de_viaje_con_arreglo
	Definir lista_tiempo,total Como Real;
	Definir cantidad ,seleccion Como Entero;
	Escribir "Cuantas tiempos realizo durante el viaje?";
	Leer cantidad;
	Dimension lista_tiempo[cantidad];
	Repetir
		seleccion<-menu;
		Segun seleccion Hacer
			1:
				ingresar_datos( lista_tiempo,cantidad);
			2:
				modificar_datos(  lista_tiempo ,cantidad );
			3:	
				total <- calcular_total(  lista_tiempo ,cantidad );
				mostrar_datos( lista_tiempo ,cantidad ,total);
		FinSegun
		
	hasta Que seleccion=4;	
	Mostrar "Finalizando programa";
FinAlgoritmo
