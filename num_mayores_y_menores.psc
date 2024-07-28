Algoritmo num_mayores_y_menores
	
	// Autor: ROberto Rico Sandoval.
	// Fille: Encontrar el n�mero mayor y el menor en una lista, su suma y su promedio.
	// Date: 26/ 05/ 2024
	// Language: PseInt.
	
	//Generar 5 n�meros aleatorios entre el 1 y el 1000 y guardarlos en una lista (Colecci�n de datos).
	Definir min, max, total, suma Como Entero;
	Definir promedio Como Real;
	
	suma = 0;
	
	Escribir Sin Saltar "Introduce una dimensi�n o total de �ndices que tendr� la lista de n�meros, que no sea mayor a 50: - ";
	Leer total;
	
	Mientras (total <= 0 o total > 50) Hacer
		
		Escribir "";
		Escribir "N�mero invalido: ", total;
		Escribir Sin Saltar"Vuelve a intentarlo. Introduce aqu� el total de �ndices de la lista que no sea mayor a 50: - ";
		Leer total;
		
	Fin Mientras
	
	Dimension coleccion[total];
	
	// Generar un total de n�meros aleatorios en una lista, por la variable totales.
	// Sumarlos para obtener el total.
	Para i = 1 Hasta total Con Paso 1 Hacer
		
		coleccion[i] = Azar(1000);
		suma = suma + coleccion[i];
		
	Fin Para
	
	// Imprimir todos los valores aleatorios que existen en nuestra colecci�n.
	Para j = 1 Hasta total Con Paso 1 Hacer
		
		Escribir Sin Saltar "[", coleccion[j], "], ";
		
	Fin Para
    
	// Encontrar el valor m�nimo y m�ximo de nuestra colecci�n.
	min = coleccion[1];
	max = coleccion[1];
	
	Para x = 2 Hasta total Con Paso 1 Hacer
		
		Si (coleccion[x] < min) Entonces
			
			min = coleccion[x];
		FinSi
		
		Si (coleccion[x] > max) Entonces
			
			max = coleccion[x];
		FinSi
		
	Fin Para
	
	// Obtener el promedio de los n�meros en la colecci�n de datos.
	promedio = suma / total;
	
	// Impresi�n de resultados.
	Escribir "";
	Escribir "";
	Escribir "El n�mero menor es: " min;
	Escribir "El n�mero mayor es: " max;
	Escribir "Total de la suma de los n�meros es: ", suma;
	Escribir "El promedio de los n�meros es: ", promedio;
	
FinAlgoritmo

