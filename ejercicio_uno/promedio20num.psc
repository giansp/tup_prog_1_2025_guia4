Proceso promedio20
	Definir i,acu,num,promedio Como Real;
	acu=0;
	Para i=1 Hasta 20 Con Paso 1 Hacer
		Escribir "Ingrese numero ",i,":";
		Leer num;
		acu=acu+num;
		promedio=acu/i;
		Escribir "Promedio para ",i," numeros es:",promedio;
	FinPara
	Escribir "Promedio total:",promedio;
FinProceso