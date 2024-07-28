Algoritmo queTtrianguloEs
	Definir num_1, num_2, num_3 Como Real
	num_1 <- 12
	num_2 <- 6
	num_3 <- 6
	// Esto es un triángulo equilatero.
	Si num_1==num_2 Y num_1==num_3 Y num_2==num_3 Entonces
		Escribir 'Es un triangulo equilatero, porque, ', num_1, ', ', num_2, ', ', num_3, ' SI son iguales.'
	FinSi
	Si num_1==num_2 Y num_1<>num_3 Entonces
		Escribir 'Es un triangulo isósceles, porque, ', num_1, ', ', num_2, ' SI son iguales, pero ,', num_3, ' NO es igual. Caso 1'
	FinSi
	// Comienzo del bloque para definir un triángulo isósceles.
	Si num_1==num_3 Y num_1<>num_2 Entonces
		Escribir 'Es un triangulo isósceles, porque, ', num_1, ', ', num_3, ' SI son iguales, pero ,', num_2, ' NO es igual. Caso 2'
	FinSi
	Si num_2==num_3 Y num_2<>num_1 Entonces
		Escribir 'Es un triangulo isósceles, porque, ', num_2, ' ', num_3, ' SI son iguales, pero ,', num_1, ' NO es igual. Caso 3'
	FinSi
	// Fin del bloque para definir un triángulo isósceles.
	// Esto es un triángulo escaleno.
	Si num_1<>num_2 Y num_1<>num_3 Y num_2<>num_3 Entonces
		Escribir 'Es un triangulo escaleno, porque, ', num_1, ', ', num_2, ', ', num_3, ' NO son iguales.'
	FinSi
FinAlgoritmo
