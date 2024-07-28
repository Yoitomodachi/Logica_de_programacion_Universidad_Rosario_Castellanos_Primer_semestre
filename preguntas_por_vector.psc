Algoritmo preguntas_por_vector
	
	Definir total, puntaje, acierto, contadorBueno, contadorMalo, promedio Como Entero;
	
	total = 10;
	puntaje = 0;
	acierto = 0;
	contadorBueno = 0;
	contadorMalo = 0;
	promedio = 0;
	
	respueta = "";
	continuar = "";
	
	Dimension preguntas[10];
	Dimension respuestasMin[10];
	Dimension respuestasMay[10];
	
	Escribir "*** Examen de historia ***"
	Escribir "";
	
	preguntas[1] = "¿Cuál es el año de la caída de Tenochtitlan?";
	preguntas[2] = "¿Cuándo inicio la independencia de México (Año)?";
	preguntas[3] = "¿Cuándo inicio la revolución mexicana (Año)?";
	preguntas[4] = "¿Quién fue el primer presidente de México?";
	preguntas[5] = "¿Existió un imperio mexicano (Si / No)?";
	preguntas[6] = "¿Cuántos niños héroes existieron (Número)?";
	preguntas[7] = "¿Nombre del presidente que genero las leyes de reformas (Primer nombre)?";
	preguntas[8] = "¿Nombre del partido político que gobierna actualmente?";
	preguntas[9] = "¿Cuántos estados hay en México?"
	preguntas[10] = "¿Nombre del país fronterizo al norte con México (Abreviado)?"
	
	respuestasMay[1] = "1521";
	respuestasMay[2] = "1810";
	respuestasMay[3] = "1910";
	respuestasMay[4] = "Guadalupe Victoria";
	respuestasMay[5] = "Si";
	respuestasMay[6] = "6";
	respuestasMay[7] = "Benito";
	respuestasMay[8] = "Morena";
	respuestasMay[9] = "32";
	respuestasMay[10] = "EUA";
	
	respuestasMin[1] = "1521";
	respuestasMin[2] = "1810";
	respuestasMin[3] = "1910";
	respuestasMin[4] = "guadalupe victoria";
	respuestasMin[5] = "si";
	respuestasMin[6] = "6";
	respuestasMin[7] = "benito";
	respuestasMin[8] = "morena";
	respuestasMin[9] = "32"
	respuestasMin[10] = "eua"
	
	Dimension repetidas[total];
	
	Repetir
	Para indice = 1 Hasta total Con Paso 1
		
		elemento = Aleatorio(1, total);
		
		Escribir "";
		Escribir Sin Saltar preguntas[elemento]
		Leer respuesta;
		
		
		Si (respuesta == respuestasMay[indice] o respuesta == respuestasMin[indice])
			
			Escribir "";
			Escribir "Correcto!";
			
			acierto = acierto + 3;
			contadorBueno = contadorBueno + 1;
			
		SiNo
			
			Escribir "";
			Escribir "Incorrecto, repasa el tema...";
			contadorMalo = contadorMalo + 1;
			
		FinSi
		
	FinPara
	
	puntaje = acierto;
	
	Escribir "";
	Escribir "Tienes un total de ", contadorBueno, " preguntas acertadas.";
	Escribir "Tienes un total de ", contadorMalo, " preguntas malas.";
	Escribir "Puntaje: ", (puntaje), " de ", (3 * total);
	
	Si (contadorBueno >= 6) Entonces
		
		Escribir "";
		Escribir "Pasaste el examen.";
		
	SiNo
		
		Escribir "";
		Escribir "No pasaste el examen, vuelve a intentarlo.";
	FinSi
	
	Escribir "";
	Escribir "Deseas continuar (S = SI / N = No)";
	Leer continuar;
	
	Hasta Que (continuar == "no" o continuar == "No")

FinAlgoritmo

