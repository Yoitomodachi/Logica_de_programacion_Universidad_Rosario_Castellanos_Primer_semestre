Algoritmo num_mayores_y_menores
	
	// Autor: ROberto Rico Sandoval.
	// Fille: Encontrar el número mayor y el menor en una lista, su suma y su promedio.
	// Date: 26/ 05/ 2024
	// Language: PseInt.
	
	//Generar 5 números aleatorios entre el 1 y el 1000 y guardarlos en una lista (Colección de datos).
	Definir min, max, total, suma Como Entero;
	Definir promedio Como Real;
	
	suma = 0;
	
	Escribir Sin Saltar "Introduce una dimensión o total de índices que tendrá la lista de números, que no sea mayor a 50: - ";
	Leer total;
	
	Mientras (total <= 0 o total > 50) Hacer
		
		Escribir "";
		Escribir "Número invalido: ", total;
		Escribir Sin Saltar"Vuelve a intentarlo. Introduce aquí el total de índices de la lista que no sea mayor a 50: - ";
		Leer total;
		
	Fin Mientras
	
	Dimension coleccion[total];
	
	// Generar un total de números aleatorios en una lista, por la variable totales.
	// Sumarlos para obtener el total.
	Para i = 1 Hasta total Con Paso 1 Hacer
		
		coleccion[i] = Azar(1000);
		suma = suma + coleccion[i];
		
	Fin Para
	
	// Imprimir todos los valores aleatorios que existen en nuestra colección.
	Para j = 1 Hasta total Con Paso 1 Hacer
		
		Escribir Sin Saltar "[", coleccion[j], "], ";
		
	Fin Para
    
	// Encontrar el valor mínimo y máximo de nuestra colección.
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
	
	// Obtener el promedio de los números en la colección de datos.
	promedio = suma / total;
	
	// Impresión de resultados.
	Escribir "";
	Escribir "";
	Escribir "El número menor es: " min;
	Escribir "El número mayor es: " max;
	Escribir "Total de la suma de los números es: ", suma;
	Escribir "El promedio de los números es: ", promedio;
	
FinAlgoritmo

