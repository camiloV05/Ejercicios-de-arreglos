Funcion subtotal <- calcular_total ( precio_unidad Por Referencia,num_productos )
	Definir subtotal Como Real;
	Definir iteracion Como Entero;
	subtotal<-0;
	Para iteracion<-1 Hasta num_productos Con Paso 1 Hacer
		subtotal<-subtotal+precio_unidad[iteracion];
	Fin Para
Fin Funcion

Funcion mostrar_recibo ( producto Por Referencia , precio_unidad Por Referencia,num_productos )
	Definir subtotal,total Como Real;
	Definir iteracion Como Entero;
	Mostrar "---------- RECIBO ----------";
	Para iteracion<-1 Hasta num_productos Con Paso 1 Hacer
		Mostrar iteracion,".",producto[iteracion]," ----- ",precio_unidad[iteracion];
	Fin Para
	subtotal <- calcular_total ( precio_unidad,num_productos );
	total<-subtotal*1.19;
	Mostrar "                                                    ";
	Mostrar "SUBTOTAL--------------",subtotal;
	Mostrar "TOTAL CON IVA---------",total;
Fin Funcion

Funcion  modificar_datos ( producto Por Referencia , precio_unidad Por Referencia,num_productos )
	Definir iteracion,seleccion , i Como Entero;
	Definir nuevo_precio Como Real;
	Definir nuevo_nombre Como Caracter;
	Para iteracion<-1 Hasta num_productos Con Paso 1 Hacer
		Mostrar iteracion,".",producto[iteracion]," ----- ",precio_unidad[iteracion];
	Fin Para
	Escribir "Digite la opcion del producto que desea modificar";
	Leer seleccion;
	Para i<-seleccion Hasta seleccion Con Paso 1 Hacer
		Escribir "Ingrese el nuevo nombre del producto ",seleccion;
		Leer nuevo_nombre;
		producto[seleccion]<-nuevo_nombre;
		Escribir "Ingrese el nuevo precio del producto ",seleccion;
		Leer nuevo_precio;
		precio_unidad[seleccion]<-nuevo_precio;
	Fin Para
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

Funcion  pedir_datos(producto Por Referencia , precio_unidad Por Referencia,num_productos)
	Definir iteracion como entero;
	Para iteracion<-1 Hasta num_productos Con Paso 1 Hacer
		Escribir "Ingrese el nombre del producto ",iteracion;
		Leer producto[iteracion];
	    Escribir "Ingrese el precio unitario del producto ",iteracion;
		Leer precio_unidad[iteracion];
		Mostrar producto[iteracion];
		Mostrar precio_unidad[iteracion];
	FinPara
	Mostrar "Datos guardados con exito";
Fin Funcion

Algoritmo total_e_iva	
	Definir seleccion , num_productos , iteracion Como Entero;
	Definir producto ,respuesta Como Caracter;
	Definir precio_unidad Como Real;
	Escribir "Cuantos productos desea ingresar?";
	Leer num_productos;
	Dimension producto[num_productos];
	Dimension precio_unidad[num_productos];
	
	Repetir
		seleccion<-0;
		seleccion<-mostrar_menu;
		Segun seleccion Hacer
			1:
				pedir_datos(producto, precio_unidad ,num_productos);
			2:
				modificar_datos( producto, precio_unidad,num_productos );
			3:
				mostrar_recibo( producto , precio_unidad,num_productos );
		Fin Segun
	Hasta Que seleccion=4;
	Mostrar "Muchas gracias por preferirnos";
FinAlgoritmo
