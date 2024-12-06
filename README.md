# LDP Proyecto 1: Sandpiles
Proyecto 1, de la materia de Lenguajes de programación (LDP), semestre 2-2024

- Parte I

Para la inicialización de la matriz, se estableció como argumentos el tamaño de la matriz nxn, el grano y su respectiva coordenada. Con base en los datos que se ingresen en la terminal, esta son validadas en la función, es decir, si las coordenadas del grano son válidas, se mostrará en pantalla la matriz en sí usando una función a parte llamada showMatrix que imprime la matriz resultante. En caso contrario, se imprime en pantalla el error de "Data Invalida"

- Parte II
 
Para la lógica de colapso, primero se estableció un caso de que si la matriz ingresada está vacía, la salida será vacía, luego la función se aplica a la matriz de entrada y comienza a procesar las celdas que necesitan colapsar. Se utiliza foldl, que es una función de reducción que aplica una función (en este caso, distributeSand) a los elementos de una lista (en este caso, positionsToCollapse), acumulando el resultado.

Para lograr este proceso, primero se calcula la longitud de la matriz cuadrada y luego se crea una lista de coordenadas (i, j) para todas las celdas que tienen 4 o más granos. Esto se hace mediante una comprensión de listas que itera sobre los índices de la matriz. En la función interna llamada distributeSand toma la matriz actual y una posición (i, j). Primero reduce el número de granos en la celda (i, j) y luego actualiza esa celda y sus vecinas a traves de otra función llamada reduceGrains  que actualiza la cantidad de granos en la celda (i, j).

Además, updateCell actualiza la celda (coordx, coordy) y sus vecinas. Utiliza foldl para aplicar updateNeighbor a cada vecino. updateNeighbor Verifica si el vecino (nx, ny) está dentro de los límites de la matriz.

Finalmente, updateMatrix actualiza la matriz en la posición (x, y) con un nuevo valor (newValue). Utiliza splitAt para dividir la matriz en partes antes y después de la fila y columna especificadas, permitiendo modificar solo la celda objetiva. 

- Parte III

En esta sección consiste en crear un ciclo llamado iterateCollapse, el cual llama varias veces a una versión duplicada de la función de la Parte II llamada multicollapseStep, de manera que realice los colapsos hasta que ya no quede ninguno. Para ello, compara la matriz después de cada colapso con la matriz antes del colapso, si ve que existe alguna posibilidad de realizar otro colapso, este imprime la matriz intermedia y continua. Si no, se cierra el ciclo.

- Parte IV

Se Llama a la función sumMatrices para sumar las dos matrices, en caso de que algunas de las dos matrices es vacía retorne ya sea la matriz A o matriz B. Si ninguna es vacía, se procede a la suma mediante dos funciones zipWith para sumar las matrices: la primera itera sobre las filas de a y b, combinando cada fila en una nueva lista y la segunda itera sobre los elementos de cada fila, sumando los elementos correspondientes de a y b. El resultado es una nueva matriz donde cada elemento es la suma de los elementos de a y b en las posiciones equivalentes.

De ese resultado, se llama la función sandPilesSimulate para que realice los colapsos iterados sobre la matriz resultante, y por consiguiente imprimir dichas iteraciones

