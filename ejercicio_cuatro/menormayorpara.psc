Proceso menormayorpara
	Definir i,mayor,menor,num Como Real;
	Definir acu Como Entero;
	acu=0;
	mayor=0;
	menor=99999999999;
	Para i=1 Hasta 30 Con Paso 1 Hacer
		acu=acu+1;
		Escribir "Ingrese numero ",acu," de 30";
		Leer num;
		Si num<=menor Entonces
			menor=num;
		SiNo
			Si num>=mayor Entonces
				mayor=num;
			FinSi
		FinSi
	FinPara
	Escribir "Numero menor: ",menor;
	Escribir "Numero mayor: ",mayor;
FinProceso
