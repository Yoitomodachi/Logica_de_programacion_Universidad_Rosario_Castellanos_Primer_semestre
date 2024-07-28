Algoritmo matrices_en_modo_emperrado
	
	// Autor: Roberto Sandoval
	// Language: PseInt
	// Date: 06/ 06/ 2024
	// Profesor: Miguel Herrera.

	filas = 3;
	columnas = 3; 
	
	Dimension tablero[filas, columnas];
	
	// Lectura de renglones.
	Para cuentaFilas = 1 Hasta filas
		
		Para cuentasColumnas = 1 Hasta columnas
			
			Escribir Sin Saltar "Dame el elementO [", cuentaFilas, ", ", cuentasColumnas, "]";
			
				Leer tablero[cuentaFilas, cuentasColumnas];
			
				Mientras (tablero[cuentaFilas, cuentasColumnas] > 9 o tablero[cuentaFilas, cuentasColumnas] < 1) Hacer
					
					Escribir Sin Saltar"El número es mayor del 1 al 9. Vuelve a intentarlo: ";
					
					Leer tablero[cuentaFilas, cuentasColumnas];
					
				FinMientras
				
		FinPara
		
	FinPara
	
	Escribir " ";
	Escribir "Impresión de mátriz";
	Escribir " ";
	
	// La posición 2,2 del trablero siempre será igual a 5
	tablero[2,2] = 5;
	
	// Imprimir arreglo.
	Para cuentaFilas = 1 Hasta filas
		
		Para cuentasColumnas = 1 Hasta columnas
			
			Escribir Sin Saltar tablero[cuentaFilas, cuentasColumnas], " ";
			
		FinPara
		
		Escribir " ";
		
	FinPara
	
	Escribir " ";
	// Inicializar un array para las sumas de las filas
	Dimensión sum[3];
	
	// Sumar elementos de las filas
	Para elemento = 1 hasta 3 hacer
		
		sum[elemento] = 0;
		
		Para itera = 1 hasta 3 hacer
			
			sum[elemento] = sum[elemento] + tablero[elemento, itera];
		FinPara
		
	FinPara
	
	// Inicializar las sumas de las diagonales
	Diagonal1 = 0;
	Diagonal2 = 0;
	
	// Sumar elementos de las diagonales
	Para fila = 1 hasta 3 hacer
		
		Diagonal1 = Diagonal1 + tablero[fila, fila];
		Diagonal2 = Diagonal2 + tablero[fila, 4 - fila];
	FinPara
	
	Escribir " ";
	
	// Verificar las sumas de las filas
	Para comprueba = 1 hasta 3 hacer
		
		SI (sum[comprueba] = 15) Entonces
			
			Escribir "Fila correcta: ", sum[comprueba];
			
		SiNo
			
			Escribir "Fila incorrecta: ", sum[comprueba];
			
		FinSi
	FinPara
	
	// Verificar las sumas de las diagonales
	SI (Diagonal1 = 15) Entonces
		
		Escribir "Diagonal izquierda correcta: ", Diagonal1;
		
	SiNo
		
		Escribir "Diagonal izquierda incorrecta: ", Diagonal1;
	FinSi
	
	SI (Diagonal2 = 15) Entonces
		
		Escribir "Diagonal derecha correcta: ", Diagonal2;
		
	SiNo
		
		Escribir "Diagonal derecha incorrecta: ", Diagonal2;
	FinSi
	
FinAlgoritmo

