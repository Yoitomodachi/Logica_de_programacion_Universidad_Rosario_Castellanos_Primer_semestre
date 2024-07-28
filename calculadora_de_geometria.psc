Algoritmo calculadora_de_figuras
	
	// Autor: Roberto RIco Sandoval.
	// Fille: Caluladora para saber el �rea y per�metro de varias figuras geom�tricas 2D
	// Date: 11/ 05/ 2024
	// Languaje: PseInt.
	
	Definir area, altura, perimetro, dato1, dato2, dato3, divisor, radio Como Real
	Definir eleccion Como Entero
	Definir continue Como Cadena
	
	Repetir
		
		Escribir ''
		Escribir '*** Bienvenido al sistema de c�lculo de figuras geom�tricas ***'
		Escribir 'Men� de opciones: '
		Escribir '1) �rea y per�metro de un tri�ngulo.'
		Escribir '2) �rea y per�metro de un cuadrado.'
		Escribir '3) �rea y per�metro de un rect�ngulo.'
		Escribir '4) �rea y per�metro de un c�rculo.'
		Escribir 'Salir del programa (S / N)'
		
		Escribir ''
		Escribir Sin Saltar 'Digita aqu� tu elecci�n: '
		Leer eleccion
		
		Seg�n (eleccion) Hacer
		
			1:
				// triangulo equilatero.
				Escribir ''
				Escribir 'Elegiste saber el �rea y per�metro de un tri�ngulo.'
				Escribir ''
				
				Escribir Sin Saltar 'Digita el primer lado del tri�ngulo: '
				Leer dato1
				
				Escribir Sin Saltar 'Digita el segundo lado del tri�ngulo: '
				Leer dato2
				
				Escribir Sin Saltar 'Digita la base del tri�ngulo: '
				Leer dato3
				
				Si (dato1==dato2 Y dato1==dato3) Entonces
					
					Escribir ''
					Escribir 'Se trata de un tri�ngulo equilatero. (', dato1, ', ', dato2, ', ', dato3, ')'
					
					// Para el per�metro solo sumamos los lados.
					perimetro <- (dato1+dato2+dato3)
					
					// Para el �rea si pedir altura, dividimos al per�emtro entre 2.
					
					perma <- (perimetro/2)
					
					// Multiplicamos el valor de la perma por la funci�n de la operaci�n (perma - 1 lado)*3.
					area <- ((perma-dato1)*(perma-dato1)*(perma-dato1)*perma)
					
					// Por �ltimo utilizamos a la funci�n rc para sacar la r�iz del n�mero anterior obtenido.
					// Expresamos a la operaci�n en cm cuadrados.
					// Se emplea a la librer�a interna rc para obtener la ra�z de la variable �rea.
					
					area <- rc(area)
					
					Escribir ''
					Escribir 'El per�metro es de: ', perimetro, ' cm'
					
					Escribir ''
					Escribir 'El �rea es de: ', area, ' cm (al cuadrado).'
					
				FinSi
				
				// triangulo is�seles.
				Si (dato1==dato2 Y dato1<>dato3) Entonces
					
					Escribir ''
					Escribir 'Se trata de un tri�ngulo is�seles. (', dato1, ', ', dato2, ', ', dato3, ')'
					
					// Para el per�metro solo sumamos los lados.
					perimetro <- (dato1+dato2+dato3)
					
					// Para el �rea si pedir altura, dividimos al per�emtro entre 2.
					perma <- (perimetro/2)
					
					// Multiplicamos el valor de la perma por la funci�n de la operaci�n (perma - 1 lado) * 2.
					// Y se m�ltiplica una sola funci�n de nuestra perma por la base.
					area <- ((perma-dato1)*(perma-dato3)*(perma-dato1)*perma)
					
					// Por �ltimo utilizamos a la funci�n rc para sacar la r�iz del n�mero anterior obtenido.
					// Expresamos a la operaci�n en cm cuadrados.
					// Se emplea a la librer�a interna rc para obtener la ra�z de la variable �rea.
					area <- rc(area)
					
					Escribir ''
					Escribir 'El per�metro es de: ', perimetro, ' cm'
					
					Escribir ''
					Escribir 'El �rea es de: ', area, ' cm (al cuadrado).'
					
				FinSi
				
				// triangulo escaleno.
				Si (dato1<>dato2 Y dato1<>dato3) Entonces
					
					Escribir ''
					Escribir 'Se trata de un tri�ngulo escaleno. (', dato1, ', ', dato2, ', ', dato3, ')'
					
					// Para el per�metro solo sumamos los lados.
					perimetro <- (dato1+dato2+dato3)
					
					// Para el �rea si pedir altura, dividimos al per�emtro entre 2.
					perma <- (perimetro/2)
					
					// Multiplicamos el valor de la perma por la funci�n de la operaci�n (perma - 1 lado) * 2.
					// Y se m�ltiplica una sola funci�n de nuestra perma por la base.
					area <- ((perma-dato3)*(perma-dato2)*(perma-dato1)*perma)
					
					// Por �ltimo utilizamos a la funci�n rc para sacar la r�iz del n�mero anterior obtenido.
					// Expresamos a la operaci�n en cm cuadrados.
					// Se emplea a la librer�a interna rc para obtener la ra�z de la variable �rea.
					
					Si (area<0) Entonces
						
						area <- (area*(-1))
						area <- rc(area)
						
						Escribir ''
						Escribir 'El per�metro es de: ', perimetro, ' cm'
						
						Escribir ''
						Escribir 'El �rea es de: ', area, ' cm (al cuadrado).'
						
					SiNo
						
						area <- rc(area)
						
						Escribir ''
						Escribir 'El per�metro es de: ', perimetro, ' cm'
						
						Escribir ''
						Escribir 'El �rea es de: ', area, ' cm (al cuadrado).'
						
					FinSi
					
				FinSi
				
			2:
				// Cuadrado.
				
				Escribir ''
				Escribir 'Elegiste saber el �rea y per�metro de un cuadrado.'
				
				Escribir ''
				Escribir Sin Saltar 'Ingresa 1 de los lados del cuadrado: '
				Leer dato1
				
				perimetro <- (dato1*4)
				area <- (dato1*dato1)
				
				Escribir ''
				Escribir 'El per�metro es de: ', perimetro, ' cm'
				Escribir 'El �rea es de: ', area, ' cm (al cuadrado).'
				
			3:
				// Rectangulo
				
				Escribir ''
				Escribir 'Elegiste saber el �rea y per�metro de un rectangulo.'
				Escribir ''
				Escribir Sin Saltar 'Ingresa la altura del rectangulo: '
				Leer dato1
				
				Escribir Sin Saltar 'Ingresa la base del rectangulo: '
				Leer dato2
				
				perimetro <- ( dato1 * 2) + (dato2 * 2)
				area <- (dato1 * dato2)
				
				Escribir ''
				Escribir 'El per�metro es de: ', perimetro, ' cm'
				Escribir 'El �rea es de: ', area, ' cm (al cuadrado).'
				
			4:
				// C�rculo.
				Escribir ''
				Escribir Sin Saltar'Ingresa el valor del di�metro de la circunferencia del c�rculo: ' 
				Leer dato1
				
				// Formulaciones y operaciones.
				// Se utiliza a la funci�n interna pi como valor de PI.
				
				radio <- (dato1 / 2)
				divisor <- (2 * pi)
				
				perimetro <- (divisor * radio)
				area <- (pi * radio ^ 2)
				
				Escribir ''
				Escribir 'El per�metro es de: ', perimetro, ' cm'
				Escribir 'El �rea es de: ', area, ' cm (al cuadrado).'
				
			De Otro Modo:
				Escribir ''
				Escribir 'Opci�n no valida [', eleccion, ']'
				
		FinSeg�n
		
		Escribir ''
		Escribir Sin Saltar '�Deseas continuar? Digita aqu� tu elecci�n - '
		Leer continue
		
	Hasta Que (continue == 'n' O continue == 'N')
	
FinAlgoritmo


