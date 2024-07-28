Algoritmo num_aleatorio
	
	// Autor: Roberto Rico Sandoval.
	// Fille: N�meros aleatorios por funci�n Azar.
	// Date: 27/ 04/ 2024
	
	Definir num_entrada, random, rangoMax, rangoMin, contador Como Entero;
	
	random <- Azar(100);
	
	contador <- 1;
	
	Escribir '*** Adivina mi n�mero ***';
	Escribir 'Ingresa un n�mero del 1 al 100, para adivinar mi n�mero: ';
	
	Leer num_entrada;
	
	rangoMax <- (random+20);
	rangoMin <- (random-20);
	
	Mientras (num_entrada>100 O num_entrada<=0) Hacer
		
		Escribir 'Colocaste un n�mero igual o menor a cero; o un n�mero mayor a 100, vuelve a intentarlo.';
		Leer num_entrada;
		
	FinMientras
	
	Mientras (num_entrada<>random) Hacer
		
		Si (contador >= 0 Y contador<5) Entonces
			
			Escribir 'Ese no es mi n�mero, vuelve a intentarlo.';
			Escribir 'Pista: Mi n�mero esta en el rango (', rangoMin, ' y ', rangoMax, ')';
			Escribir 'N�mero de intento: ', contador;
			Escribir 'Vuelve a ingresar tu n�mero: ';
			
			Leer num_entrada;
			
			Mientras (num_entrada>100 O num_entrada<=0) Hacer
				
				Escribir 'Colocaste un n�mero igual o menor a cero; o un n�mero mayor a 100, vuelve a intentarlo.';
				Leer num_entrada;
				
			FinMientras
		FinSi
		
		contador <- (contador+1);
		
		Si (contador>=5 Y contador<10) Entonces
			
			Escribir 'Ese no es mi n�mero, vuelve a intentarlo.';
			
			rangoMax <- (random+10);
			rangoMin <- (random-10);
			
			Escribir 'Pista: Mi n�mero esta en el rango (', rangoMin, ' y ', rangoMax, ')';
			Escribir 'N�mero de intento: ', contador;
			Escribir 'Vuelve a ingresar tu n�mero: ';
			Leer num_entrada;
			
			Mientras (num_entrada > 100 O num_entrada <= 0) Hacer
				
				Escribir 'Colocaste un n�mero igual o menor a cero; o un n�mero mayor a 100, vuelve a intentarlo.';
				Leer num_entrada;
				
			FinMientras
		FinSi
		
		Si (contador >= 10 Y contador < 100) Entonces
			
			Escribir 'Ese no es mi n�mero, vuelve a intentarlo.';
			
			rangoMax <- (random+5);
			rangoMin <- (random-5);
			
			Escribir 'Pista: Mi n�mero esta en el rango (', rangoMin, ' y ', rangoMax, ')';
			Escribir 'N�mero de intento: ', contador;
			Escribir 'Vuelve a ingresar tu n�mero: ';
			Leer num_entrada;
			
			Mientras (num_entrada>100 O num_entrada<=0) Hacer
				
				Escribir 'Colocaste un n�mero igual o menor a cero; o un n�mero mayor a 100, vuelve a intentarlo.';
				Leer num_entrada;
				
			FinMientras
		FinSi
		
	FinMientras
	
	Si (num_entrada == random) Entonces
		
		Escribir "Felicidades, adivinaste mi n�mero.";
		Escribir "Mi n�mero es: ", random;
		
	FinSi
	
FinAlgoritmo

