Algoritmo Encontrar_numeros 
	
	// Autor: Roberto Rico Sandoval.
	// Fille: Vectores unidireccionales.
	// Date: 30/ 05/ 2024
	// Language: PseInt.
	
	Definir entrada, num, contador, busqueda Como Entero
	
	// Variable para verificar los n�meros encontrados en cadena de texto (Falso / Verdadero)
	Encontrados = "";
	
	// Ingresar el tama�o de nuestro vector.
	Escribir Sin Saltar "Ingresa un n�mero del 1 al 100 - ";
	Leer entrada;
	
	// Verificar que la dimensi�n sea mayor a 0 y menor a 100
	Mientras entrada > 100 o entrada <= 0 Hacer
		
		Escribir "Dato no valido: ", entrada;
		Escribir Sin Saltar "Vuelve a ingresar el n�mero que no sea mayor a 100 y menor a 0 - ";
		Leer entrada;
		
	FinMientras
	
	// Vectore.
	Dimension num[entrada];
	
	// Generar n�meros enteros del 1 al 100 sobre los �ndices de nuestro vector.
	para elemento = 1 Hasta entrada Con Paso 1 hacer
		
		num[elemento] = Azar(100);
		
		Escribir Sin Saltar num[elemento], " ";
		
	FinPara
	
	// Ingresar el n�mero a buscar tantas veces sea en el vector.
	Escribir Sin Saltar "Ingresa el n�mero a buscar: ";
	Leer busqueda
	;
	// Verificar las veces o no que el n�mero se haya en el vector.
	para elemento = 1 Hasta entrada Con Paso 1 hacer
		
		contador = contador + 1;
		
		SI (busqueda == num[elemento]) Entonces
			
			Escribir "N�mero ", busqueda, " encontrado en posici�n ", contador;
			Encontrados = Encontrados + " [VERDADERO] ";
			
		SiNo
			
			Escribir "N�mero no encontrado ", busqueda, " en posici�n ", contador;
			Encontrados = Encontrados + " [FALSO] ";
			
		FinSi
		
		
	FinPara
	
	// Imprimir los valores de forma boleana en una cadena de texto (Falso o verdadero).
	Escribir "";
	Escribir Encontrados;
	
	// Imprimir en decremento el vector.
	Escribir "";
	decremento = entrada;
	Escribir Sin Saltar num[entrada], " ";
	para elemento = 1 Hasta entrada Con Paso 1 hacer
		
		decremento = decremento - 1
		
		Si (decremento <> 0 o decremento > 0) Entonces
			
			Escribir Sin Saltar num[decremento], " ";
			
		FinSi
		
	FinPara
	
FinAlgoritmo

