Funcion  mostrar_datos ( cantidad,lista_servicios Por Referencia,lista_pagos Por Referencia,total  )
	Definir i Como Entero;
	Mostrar "---------- FACTURA ----------";
	Para i<-1 Hasta cantidad Con Paso 1 Hacer
		mostrar i,".",lista_servicios[i],"----",lista_pagos[i];
	FinPara
	Mostrar "El total a pagar es de :",total;
FinFuncion

Funcion total <- calcular_total ( cantidad,lista_servicios Por Referencia,lista_pagos Por Referencia   )
	Definir total ,i Como Real;
	total<-0;
	Para i<-1 Hasta cantidad Con Paso 1 Hacer
		total<-total + lista_pagos[i];
	Fin Para
Fin Funcion
Funcion  modificar_datos ( cantidad,lista_servicios Por Referencia,lista_pagos Por Referencia  )
	Definir i ,seleccion Como Entero;
	Definir nuevo_nombre,nuevo_pago Como Real;
	Para i<-1 Hasta cantidad Con Paso 1 Hacer
		mostrar i,".",lista_servicios[i],"----",lista_pagos[i];
	Fin Para
	Escribir "Digite el servicio que desea modificar";
	Leer seleccion;
	Para i<-seleccion Hasta seleccion Con Paso 1 Hacer
		Escribir "Ingrese el nuevo nombre del servicio ",seleccion;
		Leer nuevo_nombre;
		lista_servicios[i]<-nuevo_nombre;
		Escribir "Ingrese el nuevo pago del servicio ",seleccion;
		Leer nuevo_pago;
		lista_pagos[seleccion]<-nuevo_pago;
	Fin Para
	Mostrar "Datos modificados con exito";
Fin Funcion

Funcion agregar_servicio ( cantidad,lista_servicios Por Referencia,lista_pagos Por Referencia )
	Definir i Como Entero;
	Para i<-1 Hasta cantidad Con Paso 1 Hacer
		Escribir "Ingrese el nombre del servicio ",i;
		Leer lista_servicios[i];
		Escribir "Ingrese el pago del servicio ",i;
		Leer lista_pagos[i];
	Fin Para
	Mostrar "Datos guardados con exito";
Fin Funcion

Funcion seleccion <- menu
	Definir seleccion Como Entero;
	Mostrar "---------- MENU ---------";
	Mostrar "1.Agregar servicio ";
	Mostrar "2.Modificar datos de un servicio";
	Mostrar "3.Mostrar factura";
	Mostrar "4.Salir del programa";
	Escribir "Ingrese la opcion que desea seleccionar";
	Leer seleccion;
	
Fin Funcion


Algoritmo calcular_servicios
	Definir cantidad , seleccion como entero;
	Definir lista_servicios Como Caracter;
	Definir lista_pagos ,total Como Real;
	Escribir "Ingrese cuantos servicios desea agregar";
	Leer cantidad;
	Dimension lista_servicios[cantidad];
	Dimension lista_pagos[cantidad];
	Repetir
	seleccion<-0;
	seleccion <- menu;
	Segun seleccion Hacer
		1:
			agregar_servicio( cantidad,lista_servicios,lista_pagos);
		2:
			modificar_datos( cantidad,lista_servicios ,lista_pagos );
		3:	
			total <- calcular_total (cantidad,lista_servicios ,lista_pagos);
			mostrar_datos( cantidad,lista_servicios ,lista_pagos ,total);
	Fin Segun
Hasta Que seleccion=4;
Mostrar "Finalizando programa";
FinAlgoritmo
