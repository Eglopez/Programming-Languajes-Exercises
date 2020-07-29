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
* Tipos de lenguajes
* Historia
* Análisis Léxico
* Análisis Sintáctico
* Diagramas de Estado
* Autómatas Finitos
* Expresiones Regulares 

# Lenguajes de Programación

## Que es un lenguaje de programación?

Son lenguajes que expresan un conjunto de instrucciones detalladas a una computadora para controlar el comportamiento físico o bien el comportamiento lógico de un ordenador. Estas instrucciones pueden ser directamente ejecutadas en el ordenador si estan en lenguaje maquina o de la traducción de un lenguaje de nivel alto a lenguaje de maquina. 

## Cuales son los tipos de lenguajes?

Los lenguajes en el area de la programación son variados ya que se clasifican de acuerdo a la finalidad a la que fueron creados o las herramientas en las cuales se usan. Y los lenguajes los podemos clasificar en los siguientes tipos:

### Lenguajes de Maquina y Ensamblaje 

Los lenguajes de maquina son aquellos los cuales son interpretados directamente por una computadora. Las instrucciones de este tipo de lenguajes por su codigo son en bits que son cadenas compuestas unicamente por 0s y 1s los cuales pueden llegar ser modificados a hexadecimales para un mayor entendimiento para los humanos. Algo mas esque su codigo puede variar de una computadora a otra.

Los lenguajes de ensamblaje son aquellos que usan codigo mnemónicos cortos para sus instrucciones. los lenguajes ensambladores son traducidos facilmente a lenguaje maquina. Estos lenguajes permiten crear nombres para bloques que conntienen datos.

### Lenguajes Algoritmicos

Los lenguajes algorimicos son aquellos que estan diseñados para expresar calculos matematicos o simbolicos. Estos pueden expresar varias expresiones matematicas las cuales permite a los matematicos a usar tales subprogramas para sus investigaciones. Este tipo fueron los primeros lenguajes de alto nivel.

### Lenguajes orientados a objetos

Este tipo de lenguaje ayuda a manejar la complejidad de ciertos programas ya que los objetos encapsulan los datos y operaciones en ellos y para que los detalles de los datos esten ocultos del publico en general. La jerarquia ayudo bastante ya que ahora no se repetida cierto codigo y se obtiene cierto codigo de una manera mas corta.

### Otros:

* Lenguajes Orientados a Negocios
* Lengajes Orientados a Educación
* Lenguajes Declarativos
* Lenguajes de Formateo de Texto
* Lenguajes de Visualizacion de la Web


## Historia 

Un elemento que es muy importante si quiere profundizar en algo en especifico es conocer la historia de cual fue el motivo de su creación todo lo que se tuvo que pasar hastaa el momento en el que se esta haciendo dicho estudio.

En la historia de los lenguajes de programación hay algo que es fundamental para que un lenguaje de programación sea util y para ello son necesario las computadoras. Podemos considerar que las computadoras que conocemos hoy en dia se deben en parte a Alan Turing con sus famosas maquinas de Turing que fueron de gran ayuda en la **Segunda Guerra Mundial**. Si consideramos de los lenguajes de programación mas importantes a lo largo de la historia nos encontramos que si consideramos como primer lenguajes de programación a **Plankalkul** aunque lastimosamente nunca fue implementado. Asi que el primer lenguaje de programación de lato nivel a ser implementado fue **Fortran** desarrollado por IBM en **1957**. Despues de un año del lanzamiento de **Fortran** aparecio **Lisp** que fue creado mayormente para el area de la inteligencia artificial en **1958**. El otro lenguaje en seguirles fue **Cobol** que tuvo su aparición en el año de **1959** diseñado para los negocios.Tambien luego nos encontramos con **Algol60** que es parecido en comparación con **Cobol**. En el año de **1964** aparecio **Basic** diseñado para el area de educación tanto como para maestros y estudiantes. En **1970** tuvo aparicion **Pascal** un lenguaje muy famoso y utilizado por mucho tiempo.
Luego a parecio **C** en **1972** un lenguaje de nivel bajo pero que se le dio un uso para todo tipo de tareas. En ese mismo año nos encontramos con **Prolog**. Ya en **1979** se lanzo **C++** un lenguaje ya orientado a objetos que hasta hoy en dia sigue siendo utlizida y uno de los mas frecuentados para enseñar en universidades y educación media. En **1980** **ADA** tuvo su aparición. En **1991** nos encontramos con **Python** y **Visual Basic**. Luego pasamos al año **1995** en la cual tienen aparación los siguientes lenguajes **Java**, **Javascript** y **PHP**. Ya para el siglo 21 nos encontramos en el año **2001** con **C#**. y de los mas recientes con **Go** en **2009** y con **Swift** en el **2013**. 

**LIneea de tiempo de los lenguajes de Programación**

![Linea de tiempo](https://drive.google.com/uc?export=view&id=1IdWEDjhKJjDVla4amPl1tuKPM8uSkQSJ)


## Análisis Léxico

Es el primer proceso de la fase de compilación de un programa escrito en cualquier lenguaje de programación. Consiste en que recibe de entrada el codigo de otro programa y comienza a leer cadenas de caracteres y emparejarlas con algunos patrones ya establecidos por el analizador.
Y tiene por salida a lo que llamamos como tokens(componentes lexicos) o simbolos.

Los analizadores léxicos extraen lexemas du una cadena de entrada y producen los tokens correspondientes. En este proceso no se toman en cuenta los espacios en blanco, saltos de linea, tabulaciones y los comentarios de los desarroladores ya que no son importantes en el proceso de compilación. Los token que nos da de salida sirven para el siguiente proceso de complacón que es el analizador sintáctico. Las expresiones regulares estan muy presentes en todos estos procesos de compilación las cuales se hablará de ellas posteriormente. Tambien en los analizadores léxicos se podrian construir atravez de automata finitos los cuales mas adelante tendremos una mayor proffunda explicación sobre los automatas finitos.

Un ejemplo de lo que realiza un analizador léxico al separar los tokens al analizar una linea de coodigo es:

var suma = result + 50;  -> linea que es analizada

**Token** -------------------- **Lexema**

Palabra reservada---- var   
identificador----------- suma  
asignación--------------- =   
identificador----------- result  
operador------------------- +  
entero---------------------- 50  
punto y coma-------------- ;  

## Análizador Sintáctico

El análizador sintáctico o comunmente conocido como parser es la segunda estapa de compilación de un lenguaje. El cual analiza una cadena de caracteres en este caso los tokens recibidos del análizador lexico y las analiza de acuerdo a las reglas de una gramatica formal. El analizador sintactico trasnforma las entradas que recibio en un arbol sintáctico de derivación.

Los analizadores sintácticos (parser) se pueden clasificar en 2 formas las cuales son dependiendo como construya el arbol de derivación. Las categorías son:

* parser de arriba hacia abajo (**Top-Down Parser**)
* parser de abajo hacia arriba (**Down-Top Parser**)

### Analizador sintactico de arriba hacia abajo (Top-Down Parser)

Los analiazadores sintácticos del tipo de arriba hacia abajo son los que construyen el arbol de derivación en un orden comenzando desde la raiz hasta llegar a las hojas y ramas. Algo importante que los analizadores de este tipo usan la familia de algoritmos de la forma **LL**.
La cual la primer **L** significa que escanea un input de izquierda a derecha y en ingles la **L** representa (**Left-to-Rigth**). La segunda **L** representa que la derivación es mas a la izquierda(**leftmost derivation**).

### Análizador Sintáctico de abajo hacia arriba (Down-Top Parser)

Los analizadores sintácticos del tipo de abajo hacia arriba son los que construyen el arbol comenzando desde las hojas pasando a las ramas hasta finalmente llegar a la raiz. Este tipo de analizador sintáctico uso la familia de algoritmos de la forma **LR**. La cual la primer **L** como en el caso anterior representa que escanea un input de izquierda a derecha (**Left-to-Rigth**). MIntras que la **R** representa que su derivación es mas a la derecha (**rigthmost derivation**).

 
## Diagramas de Estado

Un **diagrama de estados** es un tipo de diagramas utilizado en el area de informatica para describir el comportamiento de sistemas o por el conjunto de estados por los cuales pasa un objeto durante su vida en ciertos eventos. Esta formado por estados y transciones que a su vez incluyen eventos, acciones y actividades. Todos los diagramas de estados tienen Estados, variables de estado, actividades, estado de inicio, transciones de estados y estado final.

Ventajas que tenemos al untilizar diagramas de estado pueden ser que el analista se pueda centrar a un mejor en lo que un usuario o problema necesita y que los diagrams de estados tienen exitos en los sistemas interactivos. Como desventaja de ellos podemos encontrar que la inclusión de estas relaciones sean mas dificiles de leer para los usuarios.

Un ejemplo de diagrama de estados:




