Proceso promediomientras
	Definir num,promedio,acu,i Como Real;
	Definir bandera Como Logico;
	Definir resp Como Caracter;
	bandera=Verdadero;
	acu=0;
	i=0;
	Mientras bandera=Verdadero Hacer
		i=i+1;
		Escribir "Ingrese numero ",i;
		Leer num;
		acu=acu+num;
		promedio=acu/i;
		Escribir "Promedio para ",i," numeros es: ",promedio;
		Escribir "Ingresar otro numero?(Y/N)";
		Leer resp;
		si resp="n" o resp="N" Entonces
			bandera=Falso;
		FinSi
	FinMientras
	Escribir "Promedio total: ",promedio;
FinProceso
