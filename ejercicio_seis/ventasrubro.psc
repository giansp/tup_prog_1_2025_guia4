Proceso ventas
	Definir rubro,cantidad,monto,numVenta Como Entero;
	Definir numVentaMax,totalProductos Como Entero;
	Definir contRubro1,contRubro2,contRubro3,contRubro4,contRubro5 Como Entero;
	Definir totalVentas,maxMonto,recaudacionTotal Como Real;
	Definir continuar Como Logico;
	
	continuar=Verdadero;
	totalVentas=0;
	maxMonto=0;
	recaudacionTotal=0;
	contRubro1=0;
	contRubro2=0;
    contRubro3=0;
    contRubro4=0;
    contRubro5=0;
    totalProductos=0;
    numVenta=0;
	
	Escribir "Sistema de ventas";
	Escribir "Ingrese los datos de cada venta";
	Escribir "(Ingrese 0 en rubro para terminar";
	
	Mientras continuar=Verdadero Hacer
		numVenta=numVenta+1;
		Escribir "Venta N°: ",numVenta;
		Escribir "Rubro 1-5 (0 para terminar)";
		Leer rubro;
		Si rubro=0 Entonces
			continuar=Falso;
		SiNo 
			Si rubro>=1 y rubro<=5 Entonces
				Escribir "Cantidad de productos vendidos";
				Leer cantidad;
				Escribir "Monto total";
				Leer monto;
				
				Segun rubro Hacer
					1:
						contRubro1=contRubro1+cantidad;
					2:
						contRubro2=contRubro2+cantidad;
					3:
						contRubro3=contRubro3+cantidad;
					4:
						contRubro4=contRubro4+cantidad;
					5:
						contRubro5=contRubro5+cantidad;
				FinSegun
				totalProductos=totalProductos+cantidad;
				recaudacionTotal=recaudacionTotal+monto;
				Si monto>maxMonto Entonces
					maxMonto=monto;
					numVentaMax=numVenta;
				FinSi
			SiNo
				Escribir "Rubro incorrecto";
				numVenta=numVenta-1;
			FinSi
		FinSi
	FinMientras
	SI totalProductos > 0 Entonces
        Escribir  "Porcentajes por rubro en cantidad";
		Escribir "Rubro 1: ",(contRubro1*100/totalProductos),"%";
        Escribir "Rubro 2: ",(contRubro2*100/totalProductos),"%";
		Escribir "Rubro 3: ",(contRubro3*100/totalProductos),"%";
		Escribir "Rubro 4: ",(contRubro4*100/totalProductos),"%";
		Escribir "Rubro 5: ",(contRubro5*100/totalProductos),"%";
		
		Escribir "Venta con mayor monto";
		Escribir "Numero de venta: ",numVentaMax;
		Escribir "Monto: ",maxMonto;
		Escribir "Recaudacion total";
		Escribir "Total recaudado: ",recaudacionTotal;
	SiNo
		Escribir "No se ingresaron ventas validas";
	FinSi
	
FinProceso
