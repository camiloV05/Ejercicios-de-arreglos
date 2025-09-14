Funcion calcular_fahrenheit ( lista_temp Por Referencia,cantidad,lista_fahrenheit Por Referencia )
	Definir i Como Entero;
	Para i<-1 Hasta cantidad Con Paso 1 Hacer
		lista_fahrenheit[i]<-(lista_temp[i]*9/5)+32;
	Fin Para
Fin Funcion

Funcion  MostrarTemp ( lista_temp Por Referencia,cantidad,lista_fahrenheit Por Referencia )
	Definir i Como Entero;
	Mostrar " CELCIUS ---- FAHRENHEIT";
	Para i<-1 Hasta cantidad Con Paso 1 Hacer
		Escribir i ".", lista_temp[i]," -------- ",lista_fahrenheit[i];
	Fin Para
Fin Funcion

Funcion ModificarTemp (lista_temp Por Referencia,cantidad)
	Definir i Como Entero;
	Para i<-1 Hasta cantidad Con Paso 1 Hacer
		Escribir i ". La temperatura ingresada es: ", lista_temp[i];
	Fin Para
	Escribir "Ingresa la opción que deseas modificar (1/" cantidad ")";
	Leer opcion_modificar;
	Para i<-opcion_modificar Hasta opcion_modificar Con Paso 1 Hacer
		Escribir "Ingrese la nueva temperatura";
		Leer temp;
		lista_temp[opcion_modificar]<-temp;
	Fin Para
Fin Funcion

Funcion cantidad <- TempCant
	Definir cantidad Como Entero;
	Escribir "Ingrese la cantidad de temperaturas que desea convertir";
	Leer cantidad;
Fin Funcion

Funcion Guardartemp ( lista_temp Por Referencia, cantidad )
	Definir i Como Entero;
	Definir temp Como Real;
	Para i<-1 Hasta cantidad Con Paso 1 Hacer
		Escribir "Ingrese la temperatura Celsius " i;
		Leer temp;
		lista_temp[i]<-temp;
	Fin Para
Fin Funcion

Funcion seleccion<-MenuOpciones
	Definir seleccion Como Entero;
	Escribir "------ MENU OPCIONES -------";
	Escribir "1. Guardar temperaturas";
	Escribir "2. Modificar tmeperaturas";
	Escribir "3. Mostrar temperaturas";
	Escribir "4. Salir del programa";
	Escribir "-----------------------------";
	Escribir "Ingrese la opcion que desea seleccionar";
	Leer seleccion;
Fin Funcion

Algoritmo convertir_celsius_a_fahrenheit
	Definir seleccion Como Entero;
	Definir lista_temp,cantidad,lista_fahrenheit Como Real;
	cantidad<-TempCant;
	Dimension lista_temp[cantidad];
	Dimension lista_fahrenheit[cantidad];
	Repetir
		seleccion<-MenuOpciones;
		Segun seleccion Hacer
			1:
				Guardartemp( lista_temp , cantidad) ;
		    2:
				ModificarTemp(lista_temp,cantidad);
			3:	
				calcular_fahrenheit( lista_temp ,cantidad,lista_fahrenheit  );
				MostrarTemp( lista_temp ,cantidad,lista_fahrenheit  );
		Fin Segun
	Hasta Que seleccion=4;
FinAlgoritmo
