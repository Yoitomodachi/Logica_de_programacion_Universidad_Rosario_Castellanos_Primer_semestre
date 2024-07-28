Algoritmo calculadora_de_figuras
	
	// Autor: Roberto RIco Sandoval.
	// Fille: Caluladora para saber el área y perímetro de varias figuras geométricas 2D
	// Date: 11/ 05/ 2024
	// Languaje: PseInt.
	
	Definir area, altura, perimetro, dato1, dato2, dato3, divisor, radio Como Real
	Definir eleccion Como Entero
	Definir continue Como Cadena
	
	Repetir
		
		Escribir ''
		Escribir '*** Bienvenido al sistema de cálculo de figuras geométricas ***'
		Escribir 'Menú de opciones: '
		Escribir '1) Área y perímetro de un triángulo.'
		Escribir '2) Área y perímetro de un cuadrado.'
		Escribir '3) Área y perímetro de un rectángulo.'
		Escribir '4) Área y perímetro de un círculo.'
		Escribir 'Salir del programa (S / N)'
		
		Escribir ''
		Escribir Sin Saltar 'Digita aquí tu elección: '
		Leer eleccion
		
		Según (eleccion) Hacer
		
			1:
				// triangulo equilatero.
				Escribir ''
				Escribir 'Elegiste saber el área y perímetro de un triángulo.'
				Escribir ''
				
				Escribir Sin Saltar 'Digita el primer lado del triángulo: '
				Leer dato1
				
				Escribir Sin Saltar 'Digita el segundo lado del triángulo: '
				Leer dato2
				
				Escribir Sin Saltar 'Digita la base del triángulo: '
				Leer dato3
				
				Si (dato1==dato2 Y dato1==dato3) Entonces
					
					Escribir ''
					Escribir 'Se trata de un triángulo equilatero. (', dato1, ', ', dato2, ', ', dato3, ')'
					
					// Para el perímetro solo sumamos los lados.
					perimetro <- (dato1+dato2+dato3)
					
					// Para el área si pedir altura, dividimos al períemtro entre 2.
					
					perma <- (perimetro/2)
					
					// Multiplicamos el valor de la perma por la función de la operación (perma - 1 lado)*3.
					area <- ((perma-dato1)*(perma-dato1)*(perma-dato1)*perma)
					
					// Por último utilizamos a la función rc para sacar la ráiz del número anterior obtenido.
					// Expresamos a la operación en cm cuadrados.
					// Se emplea a la librería interna rc para obtener la raíz de la variable área.
					
					area <- rc(area)
					
					Escribir ''
					Escribir 'El perímetro es de: ', perimetro, ' cm'
					
					Escribir ''
					Escribir 'El área es de: ', area, ' cm (al cuadrado).'
					
				FinSi
				
				// triangulo isóseles.
				Si (dato1==dato2 Y dato1<>dato3) Entonces
					
					Escribir ''
					Escribir 'Se trata de un triángulo isóseles. (', dato1, ', ', dato2, ', ', dato3, ')'
					
					// Para el perímetro solo sumamos los lados.
					perimetro <- (dato1+dato2+dato3)
					
					// Para el área si pedir altura, dividimos al períemtro entre 2.
					perma <- (perimetro/2)
					
					// Multiplicamos el valor de la perma por la función de la operación (perma - 1 lado) * 2.
					// Y se múltiplica una sola función de nuestra perma por la base.
					area <- ((perma-dato1)*(perma-dato3)*(perma-dato1)*perma)
					
					// Por último utilizamos a la función rc para sacar la ráiz del número anterior obtenido.
					// Expresamos a la operación en cm cuadrados.
					// Se emplea a la librería interna rc para obtener la raíz de la variable área.
					area <- rc(area)
					
					Escribir ''
					Escribir 'El perímetro es de: ', perimetro, ' cm'
					
					Escribir ''
					Escribir 'El área es de: ', area, ' cm (al cuadrado).'
					
				FinSi
				
				// triangulo escaleno.
				Si (dato1<>dato2 Y dato1<>dato3) Entonces
					
					Escribir ''
					Escribir 'Se trata de un triángulo escaleno. (', dato1, ', ', dato2, ', ', dato3, ')'
					
					// Para el perímetro solo sumamos los lados.
					perimetro <- (dato1+dato2+dato3)
					
					// Para el área si pedir altura, dividimos al períemtro entre 2.
					perma <- (perimetro/2)
					
					// Multiplicamos el valor de la perma por la función de la operación (perma - 1 lado) * 2.
					// Y se múltiplica una sola función de nuestra perma por la base.
					area <- ((perma-dato3)*(perma-dato2)*(perma-dato1)*perma)
					
					// Por último utilizamos a la función rc para sacar la ráiz del número anterior obtenido.
					// Expresamos a la operación en cm cuadrados.
					// Se emplea a la librería interna rc para obtener la raíz de la variable área.
					
					Si (area<0) Entonces
						
						area <- (area*(-1))
						area <- rc(area)
						
						Escribir ''
						Escribir 'El perímetro es de: ', perimetro, ' cm'
						
						Escribir ''
						Escribir 'El área es de: ', area, ' cm (al cuadrado).'
						
					SiNo
						
						area <- rc(area)
						
						Escribir ''
						Escribir 'El perímetro es de: ', perimetro, ' cm'
						
						Escribir ''
						Escribir 'El área es de: ', area, ' cm (al cuadrado).'
						
					FinSi
					
				FinSi
				
			2:
				// Cuadrado.
				
				Escribir ''
				Escribir 'Elegiste saber el área y perímetro de un cuadrado.'
				
				Escribir ''
				Escribir Sin Saltar 'Ingresa 1 de los lados del cuadrado: '
				Leer dato1
				
				perimetro <- (dato1*4)
				area <- (dato1*dato1)
				
				Escribir ''
				Escribir 'El perímetro es de: ', perimetro, ' cm'
				Escribir 'El área es de: ', area, ' cm (al cuadrado).'
				
			3:
				// Rectangulo
				
				Escribir ''
				Escribir 'Elegiste saber el área y perímetro de un rectangulo.'
				Escribir ''
				Escribir Sin Saltar 'Ingresa la altura del rectangulo: '
				Leer dato1
				
				Escribir Sin Saltar 'Ingresa la base del rectangulo: '
				Leer dato2
				
				perimetro <- ( dato1 * 2) + (dato2 * 2)
				area <- (dato1 * dato2)
				
				Escribir ''
				Escribir 'El perímetro es de: ', perimetro, ' cm'
				Escribir 'El área es de: ', area, ' cm (al cuadrado).'
				
			4:
				// Círculo.
				Escribir ''
				Escribir Sin Saltar'Ingresa el valor del diámetro de la circunferencia del círculo: ' 
				Leer dato1
				
				// Formulaciones y operaciones.
				// Se utiliza a la función interna pi como valor de PI.
				
				radio <- (dato1 / 2)
				divisor <- (2 * pi)
				
				perimetro <- (divisor * radio)
				area <- (pi * radio ^ 2)
				
				Escribir ''
				Escribir 'El perímetro es de: ', perimetro, ' cm'
				Escribir 'El área es de: ', area, ' cm (al cuadrado).'
				
			De Otro Modo:
				Escribir ''
				Escribir 'Opción no valida [', eleccion, ']'
				
		FinSegún
		
		Escribir ''
		Escribir Sin Saltar '¿Deseas continuar? Digita aquí tu elección - '
		Leer continue
		
	Hasta Que (continue == 'n' O continue == 'N')
	
FinAlgoritmo


