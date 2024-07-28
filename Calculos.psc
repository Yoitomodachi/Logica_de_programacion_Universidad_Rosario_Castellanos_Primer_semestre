Algoritmo calculos
	
	// Autor: Roberto Rico Sandoval.
	// Fille: Calculadora numérica.
	// Date: 08/ 05/ 2024
	// Lenguaje: PseInt
	
	Definir num1, num2, resultado Como Real;
	Definir opciones, opcion_extra Como Entero;
	Definir pregunta Como Caracter;
	
	Repetir
		
		// Menú de opciones
		Escribir "";
		Escribir "*** Bienvenido al sistema de cálculo ***";
		Escribir "";
		Escribir "Suma <- opcion 1";
		Escribir "Resta <- opcion 2";
		Escribir "Multiplicación <- opcion 3";
		Escribir "División <- opcion 4";
		Escribir "Potencia <- opcion 5";
		Escribir "Residuo <- opcion 6";
		
		Escribir "";
		Escribir Sin Saltar "Digita tu opcíon aquí: ";
		Leer opciones;
		
		// Validar dato de menú.
		Mientras (opciones <= 0 o opciones > 7) Hacer
			
			Escribir "";
			Escribir "Opción no encontrada [", opciones, "]";
			Escribir Sin Saltar"Vuelve a intentarlo. Digita aquí tu opción: ";
			Leer opciones;
			
		FinMientras
		
 		Segun opciones Hacer
			1:
				// Suma.
				Escribir "";
				Escribir "Elegiste sumar.";
				Escribir "";
				
				Escribir Sin Saltar"Digita el prmer número: ";
				Leer num1;
				Escribir Sin Saltar"Digita el segundo número: ";
				Leer num2;
				
				resultado = (num1 + num2);
				Escribir "";
				Escribir "El resultado de la suma es: ", resultado;
			2:
				// Resta.
				Escribir "";
				Escribir "Elegiste Restar.";
				Escribir "";
				
				Escribir Sin Saltar"Digita el prmer número: ";
				Leer num1;
				Escribir Sin Saltar"Digita el segundo número: ";
				Leer num2;
				
				Escribir "";
				Escribir "Elige la manera en como deseas restar.";
				Escribir "Opción 1 <- Número 1 - Número 2";
				Escribir "Opción 2 <- Número 2 - Número 1";
				Escribir Sin Saltar "Digita aquí tu opción: ";
				Leer opcion_extra;
				
				// Validar dato de la resta.
				Mientras opcion_extra <= 0 o opcion_extra > 2 Hacer
					
					Escribir "";
					Escribir "Opción no encontrada [", opcion_extra, "]";
					Escribir Sin Saltar"Vuelve a intentarlo. Digita aquí tu opción: ";
					Leer opcion_extra;
					
				Fin Mientras
				
				Si opcion_extra == 2 Entonces
					
					resultado = (num2 - num1);
					
					Escribir "";
					Escribir "El resultado de la resta es: ", resultado;
					
				SiNo
					
					resultado = (num1 - num2);
					
					Escribir "";
					Escribir "El resultado de la resta es: ", resultado;
				FinSi
				
			3:
				// Multiplicación.
				Escribir "";
				Escribir "Elegiste Múltiplicar.";
				Escribir "";
				
				Escribir Sin Saltar"Digita el prmer número: ";
				Leer num1;
				Escribir Sin Saltar"Digita el segundo número: ";
				Leer num2;
				
				resultado = (num1 * num2);
				Escribir "";
				Escribir "El resultado de la multiplicación es: ", resultado;
				
			4:
				// División.
				Escribir "";
				Escribir "Elegiste Dividir.";
				Escribir "";
				
				Escribir Sin Saltar"Digita el prmer número: ";
				Leer num1;
				Escribir Sin Saltar"Digita el segundo número: ";
				Leer num2;
				
				// Validar el dato del número 2, para que no sea igual a cero.
				Mientras (num2 == 0) Hacer
					
					Escribir "";
					Escribir "No es posible hacer esta división, porque, el número 2 es igual a cero.";
					Escribir "Vuelve a digitar el número 2";
					Escribir Sin Saltar"Digita aquí: ";
					Leer num2;
					
				FinMientras
				
				resultado = (num1 / num2);
				Escribir "";
				Escribir "El resultado de la división es: ", resultado;
			5:	
				// Potencial.
				Escribir "";
				Escribir "Elegiste Potenciar un número.";
				Escribir "";
				
				Escribir Sin Saltar"Digita el prmer número: ";
				Leer num1;
				Escribir Sin Saltar"Digita el segundo número: ";
				Leer num2;
				
				Escribir "";
				Escribir "Elige el número que quieres agregarle un exponente.";
				Escribir "Opción 1 <- Número 1 * exponente.";
				Escribir "Opción 2 <- Número 2 * exponente.";
				Escribir Sin Saltar "Digita aquí tu opción: ";
				Leer opcion_extra;
				
				// Validar dato de la resta.
				Mientras opcion_extra <= 0 o opcion_extra > 2 Hacer
					
					Escribir "";
					Escribir "Opción no encontrada [", opcion_extra, "]";
					Escribir Sin Saltar"Vuelve a intentarlo. Digita aquí tu opción: ";
					Leer opcion_extra;
					
				Fin Mientras
				
				Si opcion_extra == 2 Entonces
					
					resultado = (num2 ^ num1);
					
					Escribir "";
					Escribir "El resultado del exponente ", num2, " ^ ", num1, " es: ", resultado;
					
				SiNo
					
					resultado = (num1 ^ num2);
					
					Escribir "";
					Escribir "El resultado del exponente ", num1, " ^ ", num2, " es: ", resultado;
				FinSi
			6:
				// Residuo.
				Escribir "";
				Escribir "Elegiste Mostrar el Residuo de una División.";
				Escribir "";
				
				Escribir Sin Saltar"Digita el prmer número: ";
				Leer num1;
				Escribir Sin Saltar"Digita el segundo número: ";
				Leer num2;
				
				// Validar el dato del número 2, para que no sea igual a cero.
				Mientras (num2 == 0) Hacer
					
					Escribir "";
					Escribir "No es posible hacer esta división, porque, el número 2 es igual a cero.";
					Escribir "Vuelve a digitar el número 2";
					Escribir Sin Saltar"Digita aquí: ";
					Leer num2;
					
				FinMientras
				
				resultado = (num1 % num2);
				Escribir "";
				Escribir "El residuo de la división es: ", resultado;
			De Otro Modo:
				
				Escribir ""
				Escribir "Opción no encontrada: [", opciones, "]";
				Escribir "";
				
		Fin Segun
		
		Escribir "";
		Escribir "¿Quieres seguir operando?";
		Escribir Sin Saltar "Digita (S / N)";
		Leer pregunta;
		
	Hasta Que (pregunta == "n" o pregunta == "N")
	
FinAlgoritmo

