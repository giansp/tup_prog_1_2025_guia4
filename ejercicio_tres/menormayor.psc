Proceso menormayor
	Definir menor,mayor,num Como Real;
	Definir bandera Como Logico;
	Definir resp Como Caracter;
	bandera=Verdadero;
	menor=100;
	mayor=0;
	Mientras bandera=Verdadero Hacer
		Escribir "Ingresar numero";
		Leer num;
		Si num>=0 y num<=100 Entonces
			Si num<menor Entonces
				menor=num;
				Si num>mayor Entonces
					mayor=num;
				FinSi
			SiNo
				si num>mayor Entonces
					mayor=num;
				FinSi
			FinSi
		SiNo
			Escribir "Ingrese un numero en el rango 0-100";
		FinSi
		Escribir "Ingresar otro num?(Y/N)";
		Leer resp;
		Si resp="n" o resp="N" Entonces
			bandera=Falso;
		SiNo
			bandera=Verdadero;
		FinSi
	FinMientras
	Escribir "Numero mayor: ",mayor;
	Escribir "Numero menor: ",menor;
FinProceso