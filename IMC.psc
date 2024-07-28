Algoritmo IMC
	
	// Autor: Roberto Rico Sandoval.
	// Fille: M�ltiples preguntas para tratar m�ltiples datos. 
	// Date: 18/04/ 2024
	
	Definir masaCorporal, estatura, peso Como Real
	Definir edad Como Entero
	Definir genero Como Cadena
	Definir nombre Como Cadena
	
	Escribir "�Cu�l es tu nombre?";
	Leer nombre
	
	Escribir "�Cu�l es tu edad?"
	Leer edad
	
	Escribir "�Cu�l es tu g�nero sexual y biol�gico?"
	Escribir "F of para mujero � M o m para hombre."
	
	Leer genero;
	
	Si (genero=='F') O (genero=='f') Entonces
		Escribir nombre, ", Eres una mujer. Tu edad es de ", edad," Pasa a la sala 13 por tu vacuna."
	FinSi
	
	Si (genero=='M') O (genero=='m')
		Escribir nombre, ", Eres un hombre. Tu edad es de ", edad, " Pasa a la sala 4 por tu vacuana.";
	FinSi	
	
	Si (genero=='F' O genero=='f') Y (edad>5 Y edad<10) Entonces
		Escribir nombre,", recibes vitaminas.";
	FinSi
	
	Si (edad>18) Entonces
		Escribir nombre, ", Eres mayor de edad:", edad;
	SiNo
		Escribir nombre, ", Eres menor de edad: ", edad
	FinSi
	
	Escribir nombre, "�Cu�l es tu peso en kilogramos (KG)?";
	Leer peso
	
	Escribir nombre, " �Cu�l es tu peso en tu estatura (cm)?";
	Leer estatura
	
	masaCorporal <- (peso * peso /estatura)
	
	Escribir nombre, ", tu IMC es de: ", TRUNC(masaCorporal*100) /100;

FinAlgoritmo

