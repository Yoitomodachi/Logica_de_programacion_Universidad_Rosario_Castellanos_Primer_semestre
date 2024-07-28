Algoritmo calculos
	
	// Autor: Roberto Rico Sandoval.
	// Fille: Calculadora num�rica.
	// Date: 08/ 05/ 2024
	// Lenguaje: PseInt
	
	Definir num1, num2, resultado Como Real;
	Definir opciones, opcion_extra Como Entero;
	Definir pregunta Como Caracter;
	
	Repetir
		
		// Men� de opciones
		Escribir "";
		Escribir "*** Bienvenido al sistema de c�lculo ***";
		Escribir "";
		Escribir "Suma <- opcion 1";
		Escribir "Resta <- opcion 2";
		Escribir "Multiplicaci�n <- opcion 3";
		Escribir "Divisi�n <- opcion 4";
		Escribir "Potencia <- opcion 5";
		Escribir "Residuo <- opcion 6";
		
		Escribir "";
		Escribir Sin Saltar "Digita tu opc�on aqu�: ";
		Leer opciones;
		
		// Validar dato de men�.
		Mientras (opciones <= 0 o opciones > 7) Hacer
			
			Escribir "";
			Escribir "Opci�n no encontrada [", opciones, "]";
			Escribir Sin Saltar"Vuelve a intentarlo. Digita aqu� tu opci�n: ";
			Leer opciones;
			
		FinMientras
		
 		Segun opciones Hacer
			1:
				// Suma.
				Escribir "";
				Escribir "Elegiste sumar.";
				Escribir "";
				
				Escribir Sin Saltar"Digita el prmer n�mero: ";
				Leer num1;
				Escribir Sin Saltar"Digita el segundo n�mero: ";
				Leer num2;
				
				resultado = (num1 + num2);
				Escribir "";
				Escribir "El resultado de la suma es: ", resultado;
			2:
				// Resta.
				Escribir "";
				Escribir "Elegiste Restar.";
				Escribir "";
				
				Escribir Sin Saltar"Digita el prmer n�mero: ";
				Leer num1;
				Escribir Sin Saltar"Digita el segundo n�mero: ";
				Leer num2;
				
				Escribir "";
				Escribir "Elige la manera en como deseas restar.";
				Escribir "Opci�n 1 <- N�mero 1 - N�mero 2";
				Escribir "Opci�n 2 <- N�mero 2 - N�mero 1";
				Escribir Sin Saltar "Digita aqu� tu opci�n: ";
				Leer opcion_extra;
				
				// Validar dato de la resta.
				Mientras opcion_extra <= 0 o opcion_extra > 2 Hacer
					
					Escribir "";
					Escribir "Opci�n no encontrada [", opcion_extra, "]";
					Escribir Sin Saltar"Vuelve a intentarlo. Digita aqu� tu opci�n: ";
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
				// Multiplicaci�n.
				Escribir "";
				Escribir "Elegiste M�ltiplicar.";
				Escribir "";
				
				Escribir Sin Saltar"Digita el prmer n�mero: ";
				Leer num1;
				Escribir Sin Saltar"Digita el segundo n�mero: ";
				Leer num2;
				
				resultado = (num1 * num2);
				Escribir "";
				Escribir "El resultado de la multiplicaci�n es: ", resultado;
				
			4:
				// Divisi�n.
				Escribir "";
				Escribir "Elegiste Dividir.";
				Escribir "";
				
				Escribir Sin Saltar"Digita el prmer n�mero: ";
				Leer num1;
				Escribir Sin Saltar"Digita el segundo n�mero: ";
				Leer num2;
				
				// Validar el dato del n�mero 2, para que no sea igual a cero.
				Mientras (num2 == 0) Hacer
					
					Escribir "";
					Escribir "No es posible hacer esta divisi�n, porque, el n�mero 2 es igual a cero.";
					Escribir "Vuelve a digitar el n�mero 2";
					Escribir Sin Saltar"Digita aqu�: ";
					Leer num2;
					
				FinMientras
				
				resultado = (num1 / num2);
				Escribir "";
				Escribir "El resultado de la divisi�n es: ", resultado;
			5:	
				// Potencial.
				Escribir "";
				Escribir "Elegiste Potenciar un n�mero.";
				Escribir "";
				
				Escribir Sin Saltar"Digita el prmer n�mero: ";
				Leer num1;
				Escribir Sin Saltar"Digita el segundo n�mero: ";
				Leer num2;
				
				Escribir "";
				Escribir "Elige el n�mero que quieres agregarle un exponente.";
				Escribir "Opci�n 1 <- N�mero 1 * exponente.";
				Escribir "Opci�n 2 <- N�mero 2 * exponente.";
				Escribir Sin Saltar "Digita aqu� tu opci�n: ";
				Leer opcion_extra;
				
				// Validar dato de la resta.
				Mientras opcion_extra <= 0 o opcion_extra > 2 Hacer
					
					Escribir "";
					Escribir "Opci�n no encontrada [", opcion_extra, "]";
					Escribir Sin Saltar"Vuelve a intentarlo. Digita aqu� tu opci�n: ";
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
				Escribir "Elegiste Mostrar el Residuo de una Divisi�n.";
				Escribir "";
				
				Escribir Sin Saltar"Digita el prmer n�mero: ";
				Leer num1;
				Escribir Sin Saltar"Digita el segundo n�mero: ";
				Leer num2;
				
				// Validar el dato del n�mero 2, para que no sea igual a cero.
				Mientras (num2 == 0) Hacer
					
					Escribir "";
					Escribir "No es posible hacer esta divisi�n, porque, el n�mero 2 es igual a cero.";
					Escribir "Vuelve a digitar el n�mero 2";
					Escribir Sin Saltar"Digita aqu�: ";
					Leer num2;
					
				FinMientras
				
				resultado = (num1 % num2);
				Escribir "";
				Escribir "El residuo de la divisi�n es: ", resultado;
			De Otro Modo:
				
				Escribir ""
				Escribir "Opci�n no encontrada: [", opciones, "]";
				Escribir "";
				
		Fin Segun
		
		Escribir "";
		Escribir "�Quieres seguir operando?";
		Escribir Sin Saltar "Digita (S / N)";
		Leer pregunta;
		
	Hasta Que (pregunta == "n" o pregunta == "N")
	
FinAlgoritmo

