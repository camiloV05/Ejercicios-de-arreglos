Funcion MostrarResultado(tiempos Por Referencia, tarifas Por Referencia, costos Por Referencia, cantidad)
	Definir i Como Entero;
	Para i<-1 Hasta cantidad Con Paso 1 Hacer
		Escribir "Trabajo ",i,": ";
		Escribir "   Horas: ", tiempos[i];
		Escribir "   Tarifa por hora: $", tarifas[i];
		Escribir "   Costo total: $", costos[i];
	Fin Para
Fin Funcion

Funcion IngresarDatos(tiempos Por Referencia, tarifas Por Referencia,cantidad)
	Definir i Como Entero;
	Para i<-1 Hasta cantidad Con Paso 1 Hacer
		Escribir "Ingrese las horas trabajadas en el trabajo ",i,":";
		Leer tiempos[i];
		Escribir "Ingrese la tarifa por hora en el trabajo ",i,":";
		Leer tarifas[i];
	Fin Para
Fin Funcion

Funcion ModificarTiempo(tiempos Por Referencia, cantidad)
	Definir i, seleccion Como Entero;
	Escribir "Seleccione el trabajo a modificar (1/",cantidad,"):";
	Para i<-1 Hasta cantidad Con Paso 1 Hacer
		Escribir i,". Horas actuales: ",tiempos[i];
	Fin Para
	Leer seleccion;
	Si seleccion >= 1 Y seleccion <= cantidad Entonces
		Escribir "Digite las nuevas horas trabajadas:";
		Leer tiempos[seleccion];
	SiNo
		Escribir "Opción inválida";
	FinSi
Fin Funcion

Funcion ModificarTarifa(tarifas Por Referencia, cantidad)
	Definir i, seleccion Como Entero;
	Escribir "Seleccione el trabajo a modificar (1/",cantidad,"):";
	Para i<-1 Hasta cantidad Con Paso 1 Hacer
		Escribir i,". Tarifa actual: $",tarifas[i];
	Fin Para
	Leer seleccion;
	Si seleccion >= 1 Y seleccion <= cantidad Entonces
		Escribir "Digite la nueva tarifa por hora:";
		Leer tarifas[seleccion];
	SiNo
		Escribir "Opción inválida";
	FinSi
Fin Funcion

Funcion CalcularCostos(costos Por Referencia, tiempos Por Referencia, tarifas Por Referencia, cantidad)
	Definir i Como Entero;
	Para i<-1 Hasta cantidad Con Paso 1 Hacer
		costos[i] <- tiempos[i] * tarifas[i];
	Fin Para
	Escribir "Los costos se han calculado exitosamente.";
Fin Funcion

Funcion opcion_menu <- MenuPrincipal
	Definir opcion_menu Como Entero;
	Escribir "----- MENU PRINCIPAL -----";
	Escribir "1. Ingresar datos (tiempo y tarifa)";
	Escribir "2. Modificar horas trabajadas";
	Escribir "3. Modificar tarifa por hora";
	Escribir "4. Calcular costos";
	Escribir "5. Mostrar resultados";
	Escribir "6. Salir";
	Escribir "---------------------------";
	Escribir "Seleccione una opción: ";
	Leer opcion_menu;
Fin Funcion

Algoritmo CalculoCostos
	Definir tiempos, tarifas, costos, cantidad Como Entero;
	Definir opcion_menu Como Entero;
	
	Escribir "¿Cuántos trabajos desea calcular?";
	Leer cantidad;
	
	Dimension tiempos[cantidad];
	Dimension tarifas[cantidad];
	Dimension costos[cantidad];
	
	Repetir
		opcion_menu <- MenuPrincipal;
		Segun opcion_menu Hacer
			Caso 1:
				IngresarDatos(tiempos, tarifas, cantidad);
			Caso 2:
				ModificarTiempo(tiempos, cantidad);
			Caso 3:
				ModificarTarifa(tarifas, cantidad);
			Caso 4:
				CalcularCostos(costos, tiempos, tarifas,cantidad);
			Caso 5:
				MostrarResultado(tiempos, tarifas, costos,cantidad);
			Caso 6:
				Escribir "Saliendo del programa...";
			De Otro Modo:
				Escribir "No se encuentra registrada esa opción.";
		Fin Segun
	Hasta Que opcion_menu=6
FinAlgoritmo

