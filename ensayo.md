# Introducción

Introducción a los lenguajes de programación. En la cual se hablará de ampliamente
y profundamente sobre el significado de un lenguaje de programación y de como se 
estructuran los lenguajes de programación utilizados hoy en día. Veremos cuales son
los procesos a los cuales son sometidos los lenguajes de programación. Se hablará de 
historia de los lenguajes de programación. Cual es su origen y como han ido cambiando 
atravez del tiempo. También el tipo de lenguajes que hay y cual es el propósito de 
cada uno de ellos para los cuales fueron creados. 

Se hablará sobre:
* Definición de un lenguaje de programación
* Immportancia de los lenguajes de programación
* Tipos de lenguajes
* Historia
* Análisis Léxico
* Análisis Sintáctico
* Diagramas de Estado
* Autómatas Finitos
* Expresiones Regulares 

# Lenguajes de Programación

## Que es un lenguaje de programación?

Son lenguajes que expresan un conjunto de instrucciones detalladas a una computadora para controlar el comportamiento físico o bien el comportamiento lógico de un ordenador. Estas instrucciones pueden ser directamente ejecutadas en el ordenador si están en lenguaje maquina o de la traducción de un lenguaje de nivel alto a lenguaje de maquina. 

## Importancia de los lenguajes de programación

Los **Lenguajes de Programación** en nuestros días son muy importantes. Están en todos lados gracias a los avances tecnológicos que tenemos. Ya que hay una gran variedad de lenguajes para varias áreas facilita los trabajos o problemas. Podemos decir también que gracias a los lenguajes de programación la humanidad ha llegado hasta el espacio. Encontramos programas y sistemas en la mayoría de cosas que utilizamos diariamente desde aplicaciones móviles, aplicaciones de escritorio y paginas web que nos proporcionan las herramientas necesarias para cumplir con el funcionamiento querido del área como en las matemáticas, físicas, biología e ingenieras entre otras y todas esas herramientas no existirían sin los lenguajes de programación. Las computadoras estarían vaciás sin que nada les diga como funcionar lógicamente. 

## Cuales son los tipos de lenguajes?

Los lenguajes en el área de la programación son variados ya que se clasifican de acuerdo a la finalidad a la que fueron creados o las herramientas en las cuales se usan. Y los lenguajes los podemos clasificar en los siguientes tipos:

### Lenguajes de Maquina y Ensamblaje 

Los lenguajes de maquina son aquellos los cuales son interpretados directamente por una computadora. Las instrucciones de este tipo de lenguajes por su código son en bits que son cadenas compuestas unicamente por 0s y 1s los cuales pueden llegar ser modificados a hexadecimales para un mayor entendimiento para los humanos. Algo mas es que su código puede variar de una computadora a otra.

Los lenguajes de ensamblaje son aquellos que usan código mnemónicos cortos para sus instrucciones. los lenguajes ensambladores son traducidos fácilmente a lenguaje maquina. Estos lenguajes permiten crear nombres para bloques que contienen datos.

### Lenguajes Algorítmicos

Los lenguajes algorítmicos son aquellos que están diseñados para expresar cálculos matemáticos o simbólicos. Estos pueden expresar varias expresiones matemáticas las cuales permite a los matemáticos a usar tales subprogramas para sus investigaciones. Este tipo fueron los primeros lenguajes de alto nivel.

### Lenguajes orientados a objetos

Este tipo de lenguaje ayuda a manejar la complejidad de ciertos programas ya que los objetos encapsulan los datos y operaciones en ellos y para que los detalles de los datos estén ocultos del publico en general. La jerarquía ayudo bastante ya que ahora no se repetida cierto código y se obtiene cierto código de una manera mas corta.

### Otros:

* Lenguajes Orientados a Negocios
* Lengajes Orientados a Educación
* Lenguajes Declarativos
* Lenguajes de Formateo de Texto
* Lenguajes de Visualización de la Web

## Historia 

Un elemento que es muy importante si quiere profundizar en algo en especifico es conocer la historia de cual fue el motivo de su creación todo lo que se tuvo que pasar hasta el momento en el que se esta haciendo dicho estudio.

En la historia de los lenguajes de programación hay algo que es fundamental para que un lenguaje de programación sea útil y para ello son necesario las computadoras. Podemos considerar que las computadoras que conocemos hoy en día se deben en parte a Alan Turing con sus famosas maquinas de Turing que fueron de gran ayuda en la **Segunda Guerra Mundial**. Si consideramos de los lenguajes de programación mas importantes a lo largo de la historia nos encontramos que si consideramos como primer lenguajes de programación a **Plankalkul** aunque lastimosamente nunca fue implementado. Así que el primer lenguaje de programación de lato nivel a ser implementado fue **Fortran** desarrollado por IBM en **1957**. Después de un año del lanzamiento de **Fortran** apareció **Lisp** que fue creado mayormente para el área de la inteligencia artificial en **1958**. El otro lenguaje en seguirlas fue **Cobol** que tuvo su aparición en el año de **1959** diseñado para los negocios. También luego nos encontramos con **Algol60** que es parecido en comparación con **Cobol**. En el año de **1964** apareció **Basic** diseñado para el área de educación tanto como para maestros y estudiantes. En **1970** tuvo aparición **Pascal** un lenguaje muy famoso y utilizado por mucho tiempo.
Luego apareció **C** en **1972** un lenguaje de nivel bajo pero que se le dio un uso para todo tipo de tareas. En ese mismo año nos encontramos con **Prolog**. Ya en **1979** se lanzo **C++** un lenguaje ya orientado a objetos que hasta hoy en día sigue siendo utilizada y uno de los mas frecuentados para enseñar en universidades y educación media. En **1980** **ADA** tuvo su aparición. En **1991** nos encontramos con **Python** y **Visual Basic**. Luego pasamos al año **1995** en la cual tienen aparición los siguientes lenguajes **Java**, **Javascript** y **PHP**. Ya para el siglo 21 nos encontramos en el año **2001** con **C#**. y de los mas recientes con **Go** en **2009** y con **Swift** en el **2013**. 

**LIneea de tiempo de los lenguajes de Programación**

![Linea de tiempo](https://drive.google.com/uc?export=view&id=1IdWEDjhKJjDVla4amPl1tuKPM8uSkQSJ)

## Análisis Léxico

Es el primer proceso de la fase de compilación de un programa escrito en cualquier lenguaje de programación. Consiste en que recibe de entrada el código de otro programa y comienza a leer cadenas de caracteres y emparejarlas con algunos patrones ya establecidos por el analizador.
Y tiene por salida a lo que llamamos como tokens(componentes léxicos) o símbolos.

Los analizadores léxicos extraen lexemas de una cadena de entrada y producen los tokens correspondientes. En este proceso no se toman en cuenta los espacios en blanco, saltos de linea, tabulaciones y los comentarios de los desarrolladores ya que no son importantes en el proceso de compilación. Los token que nos da de salida sirven para el siguiente proceso de compilación que es el analizador sintáctico. Las expresiones regulares están muy presentes en todos estos procesos de compilación las cuales se hablará de ellas posteriormente. También en los analizadores léxicos se podrían construir atravez de autómata finitos los cuales mas adelante tendremos una mayor profunda explicación sobre los autómatas finitos.

Un ejemplo de lo que realiza un analizador léxico al separar los tokens al analizar una linea de código es:

var suma = result + 50; -> linea que es analizada

**Token** -------------------- **Lexema**

Palabra reservada---- var   
identificador----------- suma   
asignación--------------- =   
identificador----------- result    
operador------------------- +   
entero---------------------- 50   
punto y coma-------------- ;   

## Analizador Sintáctico

El analizador sintáctico o comúnmente conocido como parser es la segunda etapa de compilación de un lenguaje. El cual analiza una cadena de caracteres en este caso los tokens recibidos del analizador léxico y las analiza de acuerdo a las reglas de una gramática formal. El analizador sintáctico transforma las entradas que recibió en un árbol sintáctico de derivación.

Los analizadores sintácticos (parser) se pueden clasificar en 2 formas las cuales son dependiendo como construya el árbol de derivación. Las categorías son:

* parser de arriba hacia abajo (**Top-Down Parser**)
* parser de abajo hacia arriba (**Down-Top Parser**)

### Analizador sintáctico de arriba hacia abajo (Top-Down Parser)

Los analizadores sintácticos del tipo de arriba hacia abajo son los que construyen el arbol de derivación en un orden comenzando desde la raíz hasta llegar a las hojas y ramas. Algo importante que los analizadores de este tipo usan la familia de algoritmos de la forma **LL**.
La cual la primer **L** significa que escanea un input de izquierda a derecha y en ingles la **L** representa (**Left-to-Rigth**). La segunda **L** representa que la derivación es mas a la izquierda(**leftmost derivation**).

### Analizador Sintáctico de abajo hacia arriba (Down-Top Parser)

Los analizadores sintácticos del tipo de abajo hacia arriba son los que construyen el árbol comenzando desde las hojas pasando a las ramas hasta finalmente llegar a la raíz. Este tipo de analizador sintáctico uso la familia de algoritmos de la forma **LR**. La cual la primer **L** como en el caso anterior representa que escanea un input de izquierda a derecha (**Left-to-Rigth**). Mientras que la **R** representa que su derivación es mas a la derecha (**rigthmost derivation**).

## Diagramas de Estado

Un **diagrama de estados** es un tipo de diagramas utilizado en el área de informática para describir el comportamiento de sistemas o por el conjunto de estados por los cuales pasa un objeto durante su vida en ciertos eventos. Esta formado por estados y transiciones que a su vez incluyen eventos, acciones y actividades. Todos los diagramas de estados tienen Estados, variables de estado, actividades, estado de inicio, transiciones de estados y estado final.

Ventajas que tenemos al utilizar diagramas de estado pueden ser que el analista se pueda centrar a un mejor en lo que un usuario o problema necesita y que los diagramas de estados tienen éxitos en los sistemas interactivos. Como desventaja de ellos podemos encontrar que la inclusión de estas relaciones sean mas difíciles de leer para los usuarios.

Un ejemplo de diagrama de estados del procesos de ir a clases a la universidad:

![Diagrama de estados](https://drive.google.com/uc?export=view&id=173dnAETozyAkbKyLO40nalS5rSdLqbTy)

## Autómatas finitos

Un **Autómata finito** puede ser representado como un **diagrama de estados** que tiene un conjunto de estados y va pasando de uno a otro dependiendo si la entrada es valida. los autómatas finitos deterministas son aquellos que solo pueden estar en un estada a la vez no como los autómatas no deterministas que puede estar evaluando varios estados simultáneamente. Como su nombre lo indica los estados son finitos que tiene su estado de inicio y estado final. Los **autómatas finitos** son muy importantes en el **analizador léxico** ya que los autómatas finitos leen carácter por carácter en cadenas y por cada carácter leído va haciendo transiciones entre estados. La finalidad de los **autómatas finitos** es la de reconocer lenguajes regulares. Es por ello que un **analizador léxico** puede estar compuesto por uno o mas **autómatas finitos**. También pueden ser representados en una tabla de transiciones y no solo como un **diagrama de estados**.

Ejemplo de un autómata finito:

![Automata finito](https://drive.google.com/uc?export=view&id=1tPyq340m5NmAjL1dvlfk7J2vNaEsjAf0)

## Expresiones Regulares

Las **expresiones regulares** son una secuencia de caracteres o letras que forman un patrón de búsqueda. Se utilizan mayormente para la búsqueda de cadenas que sean del tipo de a expresión regular expresada. Proporcionan una manera muy flexible de buscar y reconocer cadenas de texto según la expresión definida. Las **expresiones regulares** son uy utilizadas en los **analizadores léxicos y sintácticos** aunque mayormente en los **analizadores léxicos** ya que se facilita el trabajo porque con expresiones busca palabras que se emparejen con la expresión definida mientras los autómatas estarían revisando carácter por carácter y pasando de estado a otro que podría ser un poco mas lento que comparar directamente las cadenas si cumplen con el patrón de una expresión regular.

ejemplo de una expresión regular para definir una variable:

/[a-zA-Z]\w*/ 

# Conclusión

Como hemos podido apreciar los lenguajes de programación son muy importantes en nuestros días. Ya se puede decir que es un lenguaje de programación y que es un lenguaje simplemente ya que los dividimos por tipos e lenguajes. Conocimos la historia de los lenguajes de programación las etapas por las que tuvieron que pasar para que hoy en dia tengamos una gran diversidad de lenguajes a elegir ya que hay lenguajes para muchas áreas en general desde lenguajes para inteligencia artificial, para negocios, para educación y orientados a objetos. Sabemos cuales son los primeros procesos que pasa un lenguaje de programación al ser compilado, como trabajan los analizadores léxicos y sintácticos. Se definió que eran los autómatas finitos y como están relacionados con los diagramas de estados. Y a la vez como los autómatas son una parte importante de los analizadores léxicos. Se dio una breve explicación de que son las expresiones regulares y cuales son sus utilidades y en lo que benefician a los analizadores. 
