Funcion ImprimirTablero(Datos,TotRen,TotCol)
    
	// Imprime el tablero
    para CtaRen = 1 hasta TotRen
        para CtaCol = 1 hasta TotCol
            Escribir Sin Saltar Datos[CtaRen, CtaCol], "  "
        FinPara
        Escribir " "
    FinPara
    Escribir "------------------------------- "
    Escribir "[ * Mina    + Tiro   0 Acierto] "
	
FinFuncion

Algoritmo BuscaMinas
	
    Puntos = 0
    Bonus = 10
    Aciertos=0
    
	// Pedir dimensión al usuario.
	Escribir "";
	Escribir "*** Iniciando juego del gato ***";
	Escribir "";
	Escribir Sin Saltar "ingresa el total de filas a tener en el tablero - ";
	Leer TotRen;
	Escribir "";
	Escribir Sin Saltar "ingresa el total de columnas a tener en el tablero - ";
	Leer TotCol;
	
	// Pedir el total de minas en el tablero.
	Escribir "";
	Escribir Sin Saltar "ingresa el total de minas a tener en el tablero - ";
	Leer TotalMinas;
	
	// Pedir el total de turnos antes de perder.
	Escribir "";
	Escribir Sin Saltar "ingresa el total de turnos para elejir celdas en el tablero - ";;
	Leer TotTiros;
	
	Dimension Tablero[TotRen, TotCol]
	
    // Llena tablero de guiones
    para CtaRen = 1 hasta TotRen
		
        para CtaCol = 1 hasta TotCol
			  
			Tablero[CtaRen, CtaCol] = "-"
        FinPara
		
    FinPara
	
    // Genera minas
    para CtaMina = 1 hasta TotalMinas
		
        indice1 = aleatorio(1,TotRen)
        indice2 = aleatorio(1,TotCol)
        Tablero[indice1, indice2] = "-"
		
    FinPara
	
    // Imprime el tablero inicial
    ImprimirTablero(Tablero,TotRen,TotCol);
	
    // Tiros del usuario
    para CtaTiros=1 Hasta TotTiros
        Escribir "Tiro :", CtaTiros, "           Aciertos: ", Aciertos
        Escribir sin saltar "Dame el renglon: "
		leer TiroRen
		Escribir sin saltar "Dame la Columna: "
		leer TiroCol
		
		// Registra el tiro dado
		si Tablero[TiroRen, TiroCol] == Tablero[indice1, indice2] Entonces
			Escribir "Boom encontraste una bomba!"
			Tablero[TiroRen, TiroCol] = "0"
			Tablero[TiroRen, TiroCol] = "*"
			Puntos = Puntos + Bonus
			Aciertos = Aciertos + 1
		sino
			Tablero[TiroRen, TiroCol] = "+"
		FinSi
		// Imprime el tablero después del tiro realizado
		ImprimirTablero(Tablero,TotRen,TotCol)
		
	FinPara
	
	// Presenta los resultados
	Escribir "[Aciertos: ",Aciertos,"             Puntos : ", Puntos,"]"
	
FinAlgoritmo

