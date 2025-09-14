Funcion calcular_promedio ( lista_distancia Por Referencia,lista_tiempo Por Referencia )
	Definir velocidad_uno,velocidad_dos Como Real;
	velocidad_uno<-lista_distancia[1]/lista_tiempo[1];
	velocidad_dos<-lista_distancia[2]/lista_tiempo[2];
	Mostrar "El promedio de velocidad del vehiculo 1 es de :",velocidad_uno," KM/H";
	Mostrar "El promedio de velocidad del vehiculo 2 es de :",velocidad_dos," KM/H";
Fin Funcion

Funcion  modificar_datos ( lista_distancia Por Referencia,lista_tiempo Por Referencia  )
	Definir seleccion ,i como Entero;
	Definir nueva_distancia , nuevo_tiempo Como Real;
	Mostrar "Distancia ---------- Tiempo ";
	Para i<-1 Hasta 2 Con Paso 1 Hacer
		Mostrar i,".",lista_distancia[i],"KM-------------- ",lista_tiempo[i];
	Fin Para
	Mostrar "Ingrese el dato que desea modificar";
	Leer seleccion;
	Para i<-seleccion Hasta seleccion Con Paso 1 Hacer
		Escribir "Ingrese la nueva distancia recorrida por el vehiculo ",seleccion;
		Leer nueva_distancia;
		Escribir "Ingrese el nuevo tiempo para el vehiculo ",seleccion;
		Leer nuevo_tiempo;
	Fin Para
	Mostrar "Datos modificados con exito";
Fin Funcion

Funcion  ingresar_datos ( lista_distancia Por Referencia,lista_tiempo Por Referencia )
	Definir i Como Entero;
	Para i<-1 Hasta 2 Con Paso 1 Hacer
		Mostrar "Ingrese la distancia (KM) recorrida por el vehiculo ",i;
		Leer lista_distancia[i];
		Mostrar "Ingrese el tiempo (Hora) del vehiculo ",i;
		Leer lista_tiempo[i];
	Fin Para
	Mostrar "Datos guardados con exito";
Fin Funcion

Funcion seleccion <- menu 
	Definir seleccion Como Entero;
	Mostrar "---------- MENU ----------";
	Mostrar "1.Ingresar datos";
	Mostrar "2.Modificar datos";
	Mostrar "3.Calcular promedio de velocidad";
	Mostrar "4.Salir del programa";
	Mostrar "Ingrese la opcion que desea seleccionar";
	Leer seleccion;
Fin Funcion

Algoritmo promedio_de_velocidad_con_arreglos
	Definir seleccion Como Entero;
	Definir lista_distancia , lista_tiempo Como Real;
	dimension lista_distancia[2];
	dimension lista_tiempo[2];
	Repetir
		seleccion<-0;
	seleccion <- menu;
	Segun seleccion Hacer
		1:
			ingresar_datos( lista_distancia ,lista_tiempo );
		2:
			modificar_datos( lista_distancia ,lista_tiempo  );
		3:
			calcular_promedio( lista_distancia,lista_tiempo );
			
	Fin Segun
Hasta Que seleccion=4
Mostrar "Cerrando programa...";
FinAlgoritmo
