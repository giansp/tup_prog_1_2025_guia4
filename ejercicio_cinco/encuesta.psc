Proceso encuesta
	Definir positivos, negativos, indecisos, total, voto Como Entero;
	Definir porc_positivos, porc_negativos, porc_indecisos Como Real;
	Definir continuar Como Logico;
	positivos <- 0;
	negativos <- 0;
	indecisos <- 0;
	total <- 0;
	continuar <- Verdadero;
	Escribir 'Encuesta de opinion';
	Escribir '0:Positivo | 1:Negativo | 2:Indeciso | -1:Terminar encuesta';
	Mientras continuar=Verdadero Hacer
		Escribir 'Ingrese su voto';
		Leer voto;
		Segun voto Hacer
			0:
				positivos <- positivos+1;
				total <- total+1;
			1:
				negativos <- negativos+1;
				total <- total+1;
			2:
				indecisos <- indecisos+1;
				total <- total+1;
			-1:
				continuar <- Falso;
			De Otro Modo:
				Escribir "Opcion no valida";
		FinSegun
	FinMientras
	
	Si total>0 Entonces
		porc_positivos=(positivos*100)/total;
		porc_negativos=(negativos*100)/total;
		porc_indecisos=(indecisos*100)/total;
		Escribir "Resultados de la encuesta";
		Escribir "Positivos: ",porc_positivos,"%";
		Escribir "Negativos: ",porc_negativos,"%";
		Escribir "Indecisos: ",porc_indecisos,"%";
	SiNo
		Escribir "No se ingresaron datos";
	FinSi
FinProceso
