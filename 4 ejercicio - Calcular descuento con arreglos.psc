
Funcion subtotal_descuento <- calcular_total_descuento ( precio_descuento Por Referencia,num_productos )
	Definir subtotal_descuento Como Real;
	Definir iteracion Como Entero;
	subtotal_descuento<-0;
	Para iteracion<-1 Hasta num_productos Con Paso 1 Hacer
		subtotal_descuento<-subtotal_descuento+precio_descuento[iteracion];
	Fin Para
Fin Funcion

Funcion subtotal_original <- calcular_total_original ( precio_original Por Referencia,num_productos )
	Definir subtotal_original Como Real;
	Definir iteracion Como Entero;
	subtotal_original<-0;
	Para iteracion<-1 Hasta num_productos Con Paso 1 Hacer
		subtotal_original<-subtotal_original+precio_original[iteracion];
	Fin Para
Fin Funcion

Funcion mostrar_recibo ( producto Por Referencia , precio_original Por Referencia,precio_descuento Por Referencia ,num_productos,subtotal_original,subtotal_descuento)
	Definir total_original,total_descuento Como Real;
	Definir iteracion Como Entero;
	Mostrar "---------- RECIBO ----------";
	Para iteracion<-1 Hasta num_productos Con Paso 1 Hacer
		Mostrar iteracion,".",producto[iteracion]," ----- ",precio_original[iteracion], " ---- ",precio_descuento[iteracion];
	Fin Para
	total_original<-subtotal_original*1.19;
	total_descuento<-subtotal_descuento*1.19;
	Mostrar "                                                    ";
	Mostrar "SUBTOTAL ORIGINAL--------------",subtotal_original;
	Mostrar "TOTAL ORIGINAL CON IVA---------",total_original;
	Mostrar "SUBTOTAL DESCUENTO-----------",subtotal_descuento;
	Mostrar "TOTAL DESCUENTO CON IVA------------",total_descuento;
	
	
FinFuncion


Funcion  modificar_datos ( producto Por Referencia , precio_original Por Referencia,precio_descuento Por Referencia ,num_productos )
	Definir iteracion,seleccion , i Como Entero;
	Definir nuevo_precio Como Real;
	Definir nuevo_nombre Como Caracter;
	Para iteracion<-1 Hasta num_productos Con Paso 1 Hacer
		Mostrar iteracion,".",producto[iteracion]," ----- ",precio_original[iteracion], " ---- ",precio_descuento[iteracion];
	Fin Para
	Escribir "Digite la opcion del producto que desea modificar";
	Leer seleccion;
	Para i<-seleccion Hasta seleccion Con Paso 1 Hacer
		Escribir "Ingrese el nuevo nombre del producto ",seleccion;
		Leer nuevo_nombre;
		producto[seleccion]<-nuevo_nombre;
		Escribir "Ingrese el nuevo precio original del producto ",seleccion;
		Leer nuevo_precio;
		precio_original[seleccion]<-nuevo_precio;
		Escribir "Ingrese el nuevo precio con descuento del producto ",seleccion;
		Leer nuevo_precio;
		precio_descuento[seleccion]<-nuevo_precio;
	Fin Para
Fin Funcion


Funcion ingresar_datos ( producto Por Referencia, precio_original por referencia ,precio_descuento Por Referencia ,num_productos )
	
	Definir iteracion como entero;
	Para iteracion<-1 Hasta num_productos Con Paso 1 Hacer
	Escribir "Ingrese el nombre del producto ",iteracion;
	Leer producto[iteracion];
	Escribir "Ingrese el precio original del producto ",iteracion;
	Leer precio_original[iteracion];
	Escribir "Ingrese el precio con descuento del producto ",iteracion;
	Leer precio_descuento[iteracion];
    FinPara

Fin Funcion

Funcion seleccion <- mostrar_menu
	Definir seleccion Como Entero;
	Mostrar "---------- MENU ----------";
	Mostrar "1.Ingresar datos de compra";
	Mostrar "2.Modificar datos de compra";
	Mostrar "3.Mostrar recibo";
	Mostrar "4.Salir del programa";
	Escribir "Ingrese la opcion que desea realizar";
	Leer seleccion;
Fin Funcion

Algoritmo calcular_descuento_con_arreglos
	
	Definir seleccion , num_productos , iteracion Como Entero;
	Definir producto ,respuesta Como Caracter;
	Definir precio_original , precio_descuento,subtotal_original,subtotal_descuento Como Real;
	Escribir "Cuantos productos desea ingresar?";
	Leer num_productos;
	Dimension producto[num_productos];
	Dimension precio_original[num_productos];
	Dimension precio_descuento[num_productos];
	repetir
		seleccion<-0;
		seleccion <- mostrar_menu;
	Segun seleccion Hacer
		1:
			ingresar_datos( producto , precio_original ,precio_descuento ,num_productos );
	    2:
			modificar_datos( producto , precio_original ,precio_descuento  ,num_productos );
		3:
			subtotal_original <- calcular_total_original ( precio_original,num_productos );
			subtotal_descuento <- calcular_total_descuento ( precio_descuento,num_productos );
			mostrar_recibo(producto,precio_original,precio_descuento,num_productos,subtotal_original,subtotal_descuento);
	Fin Segun
	
Hasta Que seleccion=4
Escribir "Saliendo del programa..";
FinAlgoritmo
