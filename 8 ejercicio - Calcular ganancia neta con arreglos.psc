Funcion neta<-calcular_ganancia_neta ( lista_dias Por Referencia,lista_ganancias Por Referencia,lista_gastos Por Referencia,lista_ganancia_neta Por Referencia  )
	Definir i Como Entero;
	Definir neta Como Real;
	neta<-0;
	Para i<-1 Hasta 7 Con Paso 1 Hacer
		lista_ganancia_neta[i]<- (lista_ganancias[i] - lista_gastos[i]);
		neta<-neta+lista_ganancia_neta[i];
	Fin Para
	
Fin Funcion

Funcion mostrar_resultados ( neta,lista_dias Por Referencia,lista_ganancias Por Referencia,lista_gastos Por Referencia,lista_ganancia_neta Por Referencia  )
	Definir i Como Entero;
	Mostrar "DIA ------------- GANANCIA ------ GASTO ------ GANANCIA NETA";
	Para i<-1 Hasta 7 Con Paso 1 Hacer
		Mostrar i,".",lista_dias[i],"---------- ",lista_ganancias[i],"----------- ",lista_gastos[i],"----------",lista_ganancia_neta[i];
	Fin Para
	Mostrar "La ganancia neta de toda la semana es de :",neta;
Fin Funcion

Funcion modificar_datos ( lista_dias Por Referencia,lista_ganancias Por Referencia,lista_gastos Por Referencia,lista_ganancia_neta Por Referencia )
	Definir i,seleccion Como Entero;
	Definir nueva_ganancia ,nuevo_gasto Como Real;
	Mostrar "DIA ------------ GANANCIA ----- GASTO";
	Para i<-1 Hasta 7 Con Paso 1 Hacer
	Mostrar i,".",lista_dias[i],"---------- ",lista_ganancias[i],"---------- ",lista_gastos[i];
    Fin Para
    escribir "Ingrese el dato que desea modificar";
    Leer seleccion;
	Para i<-seleccion Hasta seleccion Con Paso 1 Hacer
		Escribir "Ingrese la nueva ganancia del dia ",lista_dias[i];
		Leer nueva_ganancia;
		lista_ganancias[i]<-nueva_ganancia;
		Escribir "Ingrese el nuevo gasto del dia ",lista_dias[i];
		Leer nuevo_gasto;
		lista_gastos[i]<-nuevo_gasto;
	Fin Para
	Mostrar "Datos modificados con exito";
Fin Funcion

Funcion agregar_datos ( lista_dias Por Referencia,lista_ganancias Por Referencia,lista_gastos Por Referencia,lista_ganancia_neta Por Referencia )
	Definir i Como Entero;
	Para i<-1 Hasta 7 Con Paso 1 Hacer
		Escribir "Ingrese la ganancia del dia ",lista_dias[i];
		leer lista_ganancias[i];
		Escribir "Ingrese los gastos del dia ",lista_dias[i];
		Leer lista_gastos[i];
		lista_ganancia_neta[i]<- (lista_ganancias[i] - lista_gastos[i]);
	Fin Para
	Mostrar "Datos guardados con exito";
Fin Funcion

Funcion  respuesta<-menu
	Definir respuesta Como Entero;
	Mostrar "---------- MENU ----------";
	Mostrar "1.Agregar datos de gastos y ganancias diarios";
	Mostrar "2.Modificar datos de gastos y ganancias diarias ";
	Mostrar "3.Mostrar resultados";
	Mostrar "4.Salir del programa";
	Escribir "Ingrese la opcion que desea seleccionar";
	Leer respuesta;
	
Fin Funcion

Algoritmo calcular_ganancia_neta_con_arreglos
	Definir lista_dias Como Caracter;
	Definir respuesta Como Entero;
	Definir lista_ganancias,lista_gastos,lista_ganancia_neta,neta Como Real;
	neta<-0;
	Dimension lista_dias[7];
	Dimension lista_ganancias[7];
	Dimension lista_gastos[7];
	Dimension lista_ganancia_neta[7];
	lista_dias[1]<-"lunes";
	lista_dias[2]<-"martes";
	lista_dias[3]<-"miercoles";
	lista_dias[4]<-"jueves";
	lista_dias[5]<-"viernes";
	lista_dias[6]<-"sabado";
	lista_dias[7]<-"domingo";
	Repetir
		respuesta<-menu;
		Segun respuesta Hacer
			1:
				agregar_datos( lista_dias,lista_ganancias,lista_gastos ,lista_ganancia_neta);
	        2:
				modificar_datos( lista_dias ,lista_ganancias,lista_gastos ,lista_ganancia_neta );
			3:
				neta<-calcular_ganancia_neta( lista_dias,lista_ganancias,lista_gastos ,lista_ganancia_neta );
				mostrar_resultados( neta, lista_dias ,lista_ganancias ,lista_gastos ,lista_ganancia_neta );
		Fin Segun
	Hasta Que respuesta=4;
	Mostrar "Finalizando programa..";
FinAlgoritmo
