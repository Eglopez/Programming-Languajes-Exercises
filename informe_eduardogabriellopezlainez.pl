:- use_module(library(http/thread_httpd)).
:- use_module(library(http/http_dispatch)).
:- use_module(library(http/http_error)).
:- use_module(library(http/html_write)).
:- encoding(utf8).

server(Port) :-
        http_server(http_dispatch, [port(Port)]).

:- http_handler(root(.), content, []).

content(Request) :-
    reply_html_page(
        [title('Informe')],
        [\body(Request)]
    ).

body(_Request) -->
   html(
       [
           \cover,
           \introduction,
           \investigation,
           \conclusion,
           \bibliography
       ]
   ).

cover -->
    html(
        [
            h1([style='padding-left: 215px;padding-rigth: 60px;'],'Universidad Nacional Autónoma De Honduras'),
            img([src='https://upload.wikimedia.org/wikipedia/commons/f/f9/Logo-unah.jpg', style='padding-left: 44%;', width="140", height="170"]),
            p(
                [style='padding: 35px 40px 35px 60px;text-align:center;'],
                [  
                    b('Estudiante: '), 'Eduardo Gabriel López Laínez', br(''),br(''),
                    b('No.Cuenta: '), '20171031676', br(''),br(''),
                    b('Ingeniero: '), 'Jose Inestroza',br(''),br(''),
                    b('Clase: '), 'Lenguajes de Programación',br(''),br(''),
                    b('Trabajo: '), 'Creación de aplicaciones web usando Swi-Prolog',br(''),br(''),br(''),br(''),
                    b('TEGUCIGALPA M.D.C'),br(''),br(''),br(''),hr('')
                ]
            )
        ]
    ).

introduction -->

    html(
        [
            h1([style='text-align:center;'],'Introducción'),
            br(''),
            p(
                [style='padding: 5px 200px;text-align: justify;'],
                'Conoceremos el proceso de elaboración de aplicaciones web utilizando swi-prolog.
                Pero antes de ello trataremos sobre diversos temas antes de comenzar a explicar dicho proces.
                Se hablara sobre que es Prolog, Para que se utiliza, porque el uso de el en aplicaciones web y 
                conoceremos sobre ciertos sitios web que utilizan Prolog. Apartir de esos temas se obtendra
                un mejor criterio sobre la importancia que tiene o tuvo Prolog. Y ya en el proceso de una aplicación 
                web usando swi-prolog abordaremos temas que entre ellos tenemos: como es el flujo general de la 
                implementación de Web con Prolog, que son los manejadores en Prolog, Cuales son los primeros pasos 
                para crear un programa Web y cargar, ejecutar y cerrar el servidor en SWI-Prolog y Cuáles formas puedo 
                usar en Prolog, para crear HTML como programa Web.'
            ),
            p(
                [style='padding: 5px 200px;text-align: justify;'],
                'Llegaremos a crear nuestro primer "Hola mundo" en Prolog utilizando
                swi-prolog y levamtaremos el server para poder ver nuestra primera aplicación web.
                Tambien a medida vayamos avanzando se mirará profundamente como hacer formularios
                POST con Prolog, a su vez como recibir peticiones POST incluyendo ejemplo de codigo
                para lo antes mencionado.'   
            ),
            p(
                [style='padding: 5px 200px;text-align: justify;'],
                'Toda la información obtenida nos ayudara a darnos una introducción de lo que se ha hablado
                que es la creación de aplicaciones web utilizando swi-prolog, esto nos ayuadará a expandir nuestro
                conocimiento sobre lo que es el desarrollo web y cual era su proceso anteriormente a todas las herramientas
                que tenemos disponible ahora. También nos dara lo que es una noción de como eran desarrolladas las aplicaciones 
                web antiguamente sin las herramientas que tenemos hoy en dia para el desarrollo web. Y como es que un lenguaje 
                como Prolog siendo un lenguaje desarrollado en los años de 1960s y que pricipalmente fue diseñado para la inteligencia
                 artificial también tuvo su uso en el desarrollo web.'
            ),br(''),br(''),br(''),hr('')    
        ]
    ).

investigation -->
    html(
        [
            h1([style='text-align: center;'], 'Prolog'),
            br(''),
            p(
               [style='padding: 5px 200px;text-align: justify;'],
               'Ya introduciendonos en nuestro tema de interes que son las creaciones de aplicaciones
               web utilizando "swi-prolog" necesitamos conocer ciertas cosas antes de ello por ejemplo
               que es "Prolog" y porqué necesitamos conocer que es Prolog?. Esto se debe que para crear
               dichas aplicaciones web un requisito primordial aparte de lla installación de "swi-prolog"
               es manejar Prolog de lo contrario se dificultara la creación de la aplicación.' 
            ),
            h2([style='padding: 5px 200px;text-align: left;'],'¿Que es Prolog?'),
            p(
                [style='padding: 5px 200px;text-align: justify;'],
                'Prolog es un lenguaje de programación orientado a la programación logica asi como su nombre 
                lo indica ya que viene del termino franés "Programmation en Logique". Como se menciono anteriormente
                el lenguaje de Prolog originalmente fue diseñado para el campo que conocemos como la inteligencia
                artificial.'
            ),
            p(
                [style='padding: 5px 200px;text-align: justify;'],
                'Este lenguaje de programación tuvo su aparecimiento a pricpio de los años 70s en una
                universidad de Maseille,Francia. Originalmente Prolog era un lenguaje totalmente interpretado 
                pero en el año de 1983 se desarrollo un compilador para este lenguaje de Prolog y desde ese
                momento Prolog dejo de ser unicmente interpretado a semi-interpretado. Asi mismo un giro inesperado
                que se dio en cuanto a prolog fue que tambien se le pudo dar uso para la creación de aplicaciones 
                web y se convirtio en un lenguaje de varios usos no solo para inteligencia artificial.'
            ),
            p(
                [style='padding: 5px 200px;text-align: justify;'],'En Prolog nos encontramos con 2 tipos de
                clausulas que son las Reglas y Hechos.'    
            ),
            pre(
                [style='padding: 5px 200px;text-align: center;'],
                code(
                    'Pais :- Continente.'
                )
            ),
            p(
                [style='padding: 5px 200px;text-align: justify;'],
                'Al codigo mostrado se le conoce como una Regla en Prolog la cual indica que un pais
                es parte de un continente. Y a continuación es un ejemplo de lo que es un hecho en Prolog:'
            ),
            pre(
                [style='padding: 5px 200px;text-align: center;'],
                code(
                    'Pais(Honduras).'
                )
            ),
            h2([style='padding: 5px 200px;text-align: left;'],'¿Prolog para la Web?'),
            p(
                [style='padding: 5px 200px;text-align: justify;'],
                'Una de las razones por las que se ha llegado a implementar prolog para la creación de aplicaciones
                web mediante swi-prolog es por su tipo de estructura ya que es orientado a una programación logica
                y gracias a eso es capaz de resolver muchos problemas que ciertos lenguajes convencionales y mas utilizados
                en su epoca les resultaban mas dificiles de resolver. Tambien gracias a que "swi-prolog" 
                un framework para aplicaciones web en prolog es muy amigable y facil de usar.'
            ),
            p(
                [style='padding: 5px 200px;text-align: justify;'],
                'Aunque actualmente sea dificil y comlicado de identificar si un sitio web esta hecho en prolog
                existen o han existido varios sitios realizados en "swi-prolog" los cuales a continuación
                se mencionaran un par de sitios web hechos con Prolog y estos son:'
            ),
            ul(
                [style='padding: 5px 200px;'],
                [
                    li('Cogbo'),
                    li('SecuritEase'),
                    li('Impatient Geohasher'),
                    li('Simularity')
                ]   
            ),
            h2([style='padding: 5px 200px;text-align: left;'],'Flujo de implementación en Prolog'),
            p(
                [style='padding: 5px 200px;text-align: justify;'],
                'En los años de 1980s Prolog y C podian interectactuar recursivamente entre ellos llamandose
                uno al otro ya que los sistemas de Prolog no eran muy conscientes entonces por ello necesitaban 
                del lenguaje C para que fuera masn consciente con su entorno.'
            ),
            p(
                [style='padding: 5px 200px;text-align: justify;'],
                'Swi-Prolog se basa en una maquina virtual que define solamente 7 instrucciones. Ya que Prolog
                se puede compilar facilmenta ya que es semi-interpretado. Esto provoca que el compilador sea mas
                rapido.SWI-Prolog implementa variables atribuidas (restricciones) y continuaciones delimitadas 
                siguiendo el diseño en hProlog de Bart Demoen. Otra cosa esque como trabaja con 7 instrucciones
                al tratar de ampliarlas se tuvo cuidado con mantener las ventajas de la descompilación y el 
                seguimiento del código compilado. Las extensiones incluyen instrucciones especializadas para 
                unificación, invocación de predicados, algunos predicados incorporados de uso frecuente, aritmética y control.'
            ),
            h2([style='padding: 5px 200px;text-align: left;'],'Manejadores en Prolog'),
            p(
                [style='padding: 5px 200px;text-align: justify;'],
                'Los manejadores en "Swi-Prolog también llamados handlers son a lo que conocemos como paths o routes
                en el desarrollo web que se encargan de manejar el flujo de solicitudes y respuestas, desde y hacia el cliente 
                un ejemplo de la comunicación quee tienen es mediante un servidor y un navegador del lado del cliente
                y para ello de lo que mas se utiliza y se comunican comunmente es via peticiones HTTP. EN prolog los 
                handlers se declaran como reglas de las ya anteriormente se ha dado un ejemplo.'
            ),
            p(
                [style='padding: 5px 200px;text-align: justify;'],
                'Los Handlers pueden variar desde que uno solo controle la ruta raiz nuestro root, El primer argumento
                 significa la raiz (root) de la URL. El segundo argumento puede tener la forma de nombre(argumento,Request)
                 donde Request nos indica cual es la información de la solicitud que estaos haciendo.El ultimo argumento
                 es un arreglo vacio que permite que solamente un handler maneje todo lo que se encuentre en esa ruta 
                 o path. Ya para sitios o aplicaciones web grandes que necesiten de muchas rutas de la forma en la que comunmente
                 se declaran los handlers en Swi-Prolog no son tan eficientes es por ello que tambén encontramos los
                 (Abstract Paths) rutas abstractas para poder no tener problemas con las peticiones HTTP'
            ),
            p(
               [style='padding: 5px 200px;text-align: justify;'],
               'Ejemplo de un Handler comun utilizado en Swi-Prolog:' 
            ),
            pre(
                [style='padding: 5px 200px;text-align: center;'],
                code(
                    ':- http_handler(/, content, []).'
                )
            ),
            p(
               [style='padding: 5px 200px;text-align: justify;'],
               'Ejemplo de un Handle con un path abstracto:' 
            ),
            pre(
                [style='padding: 5px 200px;text-align: center;'],
                code(
                    ':- http_handler(root(.), content, []).'
                )
            ),
            h2([style='padding: 5px 200px;text-align: left;'],'Creación de aplicación web'),
            p(
                [style='padding: 5px 200px;text-align: justify;'],
                'Ya entrando en la parte practica y un poco demostrativa mediante codigo. Los primeros
                pasos a seguir para crear y ejecutar un programa con "Swi-Prolog" y correr el servidor.
                Primeramente como se menciono en la introducción ya debemos tener instalado nuestra mayor 
                y mejor herramienta que es Swi-Prolog. El primer paso para crear un progrma web es crear el 
                archivo con extesión ".pl" que hace referencia a que es un archivo de Prolog, un ejemplo de como
                se debe mirar el nombre de dicho archivo será "nombre.pl". Seguido comnzamos a escribir codigo
                en nuestro archivo creado. Lo primero que se debera añadir al archivo son las librerias que utilizaremos
                que en nuestro caso pondremos unicamente las necesarias para poder correr el programa. Lo ultimo
                que nos falta para poder levantar nuestro servidor y programa es expresar la regla para el puerto en 
                el servidor que nos conectaremos.'
            ),
            p(
                [style='padding: 5px 200px;text-align: justify;'],
                'A continuación ilustración de nuestro archivo con lo necesario para cargar y ejecutar nuestro programa web:'
            ),
            pre(
                [style='padding: 5px 200px;'],
                code(
                    '
                        :- use_module(library(http/thread_httpd)).
                        :- use_module(library(http/http_dispatch)).

                        server(Port) :-
                            http_server(http_dispatch, [port(Port)]). 

                    '
                )
            ),
            p(
                [style='padding: 5px 200px;text-align: justify;'],
                'Luego de tener ya nuestro archivo necesitamos ingresar a Swi-Prolog que lo hacemos
                primeramente ingresando a nuestra consola o terminal y ejecutal el comando "swipl"
                siempre y cuando estemos en la ruta donde se encuentra el archivo. Para cargar el archiivo
                dentro de Swi-Prolog pondremos entre corchetes el nombre del archivo y fuera de los corchetes el punto
                indicando que es un hecho de Prolog y sino encuentra errores nos retornara un true.'
            ),
            p(
                [style='padding: 5px 200px;text-align: justify;'],
                'Ilustaccion de como cargar archivo dentro de Swi-Prolog:'
            ),
            pre(
                [style='padding: 5px 200px;'],
                code(   
                    '
                        ?- [nombreArchivo].
                        ?- true.
                    '
                )
            ),
            p(
                [style='padding: 5px 200px;text-align: justify;'],
                'Para correr el servidor usamos el comando "server(puertoQueUtilizaremos)."
                en la cual nos retornara que se ha inciado el servidor en la dirección http. 
                Luego igualmente nos regresara el hecho "true." si no hubo problemas al inciar 
                el servidor y ya ahora podemos ir a la direccion http. y para abortar el servidor
                ejecutaremos "Ctrl+C" y luego colocaremos la "a" haciendo referencia de abortar.'
            ),
            p(
                [style='padding: 5px 200px;text-align: justify;'],
                'Ilustración del comando para inciar el servidor en el puerto 8080 como ejemplo:'
            ),
            pre(
                [style='padding: 5px 200px;'],
                code(
                    '
                        ?- server(8080).
                        % Started server at http://localhost:8080/
                        true.
                    '
                )
            ),
            h2([style='padding: 5px 200px;text-align: left;'],'Creación de Html'),
            p(
               [style='padding: 5px 200px;text-align: justify;'],
               'Para la creación de html en Swi-Prolog podemos encontrar 3 formas para hacerlo.
               Una de ellas nos permite mostrar directamente el html que hemos hecho algo que
               dependiendo el problema que estamos haciendo o nuestro proposito nos resultara conveniente
               ya que por lo general esa forma no es utlizada ya que  no es una representación
               dinamica.'
            ),
            p(
                [style='padding: 5px 200px;text-align: justify;'],
                'Mientras las otras 2 ocpiones que encontramos nos permiten obtener una representación dinamica
                del html creado. Para todas estas opciones usamos etiquetas html o el nombre de ellas.Por eso
                para la creación de aplicaciones web con Swi-Prolog aparte de manejar Prolog se requiere de 
                conocimientos de html hasta incluso css. Los nombres de estas opciones son una de ellas es 
                "print_html" y la otra "reply_html_page". Se dara ejemplo de ellos en la siguiente sección junto al siempre ejercicio muy 
               utilizado de "hola mundo".'
            ),
            h2([style='padding: 5px 200px;text-align: left;'],'Hola mundo con Swi-Prolog'),
            p(
               [style='padding: 5px 200px;text-align: justify;'],
               'Ya sabemos como cargar y ejecutar nuestro archivo de nuestra apliacación web, pero
               NO muestra nada. Asi que en esta ocasión haremos de hecho ya lo necesario para cargar el
               programa y levantar el servidor asi que las partes de codigo mostradas a continuación solo
               incluira las partes donde se agrega html.' 
            ),
            p(
                [style='padding: 5px 200px;text-align: justify;'],
                'La primera opción qu tenemos para utilizar es la que nos imprime el html y no es recomendado
                ya que no es una representación dinamica. Su codigo:'
            ),
            pre(
                [style='padding: 5px 200px;'],
                code(
                    '
                        Hola(_Request) :-
                            format(\'Content-type: text/html~n~n\'),
                                format(
                                    \'
                                        <html>
                                            <head>
                                                <title>Hola Mundo</title>
                                            </head>
                                            <body>
                                                <h1>Hola Mundo</h1>
                                                <p>Este es un parrafo con Swi-Prolog</p>
                                            </body>
                                        </html>
                                    \'
                                ).
                    '
                )
            ),
            p(
                [style='padding: 5px 200px;text-align: justify;'],
                'Como segunda Opción tenemos a "print_html". Esta segunda opción
                ya nos representa dinamicamente nuestro html. Siempre recordando que 
                la porción de codigo mostrada a continuación es solo la parte de html y
                se espera que ya se tenga lo necesario para que ejecutar el programa. EL codigo de la
                segunda opción de print_html a continuación:'
            ),
            pre(
                [style='padding: 5px 200px;'],
                code(
                    '
                        Hola(_Request) :-
                            format(\'Content-type: text/html~n~n\'),
                            print_html(
                                [
                                    \'<html>\',
                                    \'<head>\',
                                    \'<title>\',
                                    \'Hola Mundo\',
                                    \'</title>\',
                                    \'</head>\',
                                    \'<body>\',
                                    \'<h1>\',
                                    \'Hola Mundo 2\',
                                    \'</h1>\',
                                    \'<p>\',
                                    \'Este es un parrafo 2 con Swi-Prolog\',
                                    \'</p>\',
                                    \'</body>\',
                                    \'</html>\'
                                ]
                            ).    
                    '
                )
            ),
            p(
                [style='padding: 5px 200px;text-align: justify;'],
                'Como tercera opción tenemos 2 en 1 que es el "reply_html_page" y el "html". Tomo 
                las 2 en una ya que el formato es el mismo en ambos casos, solo cambia el nombre del 
                inicio y cabe mencionar que esa opción es la que tomo para la realización del informe.
                Acontinuación ejemplo de esta opción:'
            ),
            pre(
                [style='padding: 5px 200px;'],
                code(
                    '
                        Hola(_Request) :-
                            reply_html_page(
                                [title(\'Hola Mundo 3\')],
                                h1(\'Hola Mundo 3\'),
                                p(\'Este es un parrafo3 con Swi-Prolog.\')
                            ).
                    '
                )
            ),
            h2([style='padding: 5px 200px;text-align: left;'],'Creación de Formularios POST'),
            p(
                [style='padding: 5px 200px;text-align: justify;'],
                'Para la creación de formularios con el metodo POST podemos utilizar cualquiera
                de las formas para incluir html dinamico representativo y usando la etiqueta form para
                la creación de formularios html con la diferencia que a cada input que recibiremos
                le agregaremos un arreeglo vacio.'
            ),
            p(
                [style='padding: 5px 200px;text-align: justify;'],
                'Ejemplo de un formulario POST en Swi-Prolog:'
            ),
            pre(
                [style='padding: 5px 200px;'],
                code(
                    '
                        formulario(Request) :-
                            reply_html_page(
                                form(
                                    [action=\'/login\', method=\'POST\'],
                                    [
                                        p(
                                            [],
                                            label([for=nombre],\'Nombre:\'),
                                            input([name=nombre, type=textarea])
                                        ),
                                        p(
                                            [],
                                            label([for=apellido],\'Apellido:\'),
                                            input([name=Apellido, type=textarea])
                                        ),
                                        p(
                                            [],
                                            input([name=submit, type=submit, value=\'Submit\'],
                                            []
                                            )
                                        )
                                    ]
                                )
                            ).
                    '
                )
            ),
            h2([style='padding: 5px 200px;text-align: left;'],'Recepción de los datos del formulario'),
            p(
                [style='padding: 5px 200px;text-align: justify;'],
                'Para la recepción de la nformación recibida del formulario lo haremos de la siguiente manera.
                Cabe mencionar que pueden exister otras maneras para hacerlo, pero en este caso utilizaremos
                una de ellas. Tomaremos como base el ejemplo de la sección anterior de la creación de 
                formularios POST haciendo de hecho que el servidor se ejecute sin problemas asi como el archivo.
                El codigo de ejemplo recibe la información del formulario que para leerla usamos "http_read_data"
                despues de obtener la información le asignamos la data a las variables. Luego para imprimir
                dicha información obtenida usamos los metodos ya antes explicados sobre html agregandole las variables
                donde queremos que se muestre la información.'
            ),
            pre(
                [style='padding: 5px 200px;'],
                code(
                    '
                        dataFormulario(Request) :-
                            http_read_data(Request, Data, []),
                            usuario(nombre=Nombre,Data),
                            usuario(apellido=Apellido,Data),
                            reply_html_page(
                                h1(\'Los datos del Usuario son:\'),
                                p(\'Nombre:\' Nombre),
                                p(\'Apellido:\' Apellido)
                            ).
                    '
                )
            ),
            br(''),br(''),br(''),hr('')

        ]
    ).

conclusion -->
    html(
        [
            h1([style='text-align: center;'],'Conclusiones'),
            br(''),
            p(
                [style='padding: 5px 200px;text-align: justify;'],
                'Hemos aprendido sobre la creación de aplicaciones web mediante Swi-Prolog,
                pero antes de ello profundizamos sobre que es Prolog, de donde viene y cual
                fue el motivo por el cual fue creado, aparte que concocimos un poco sobre como
                esta compuesto que es de reglas y hechos.'
            ),
            p(
                [style='padding: 5px 200px;text-align: justify;'],
                'Nos preguntamos el porque utilizar prolog para desarrollo web y logramos encontrar
                la respuesta de dicha razón y porque el utlizar la herrmienta de "Swi-Prolog". Tambien
                como llego a implementarse a la web siendo un lenguaje de programación semi-interpretado 
                orientado a la programación logica y diseñado para la inteligencia artificial especificamente
                y las ventajas que tenian para utilizarlo en el desarrollo web.'
            ),
            p(
                [style='padding: 5px 200px;text-align: justify;'],
                'Se aprendio sobre el uso de los handlers tambien conocidos en el desarrollo web como paths
                o routes. Como declararlos y tambien como declararlos en aplicaciones grandes y complejas utilizando
                los paths abstractos de Swi-Prolog dando ejemplos de ellos. Se profundizo en como ejecutar y cargar
                nuestro primer programa para la web con codigo de ejemplo. Asi mismo para como iniciar el servidor
                con Swi-Prolog.Y lo que se le debe añadir al archivo para que se ejecute incluyendo las librerias
                necesarias especificamente con ese proposito y declarar la regla para el puerto del servidor.'
            ),
            p(
                [style='padding: 5px 200px;text-align: justify;'],
                'Se investigo como representar el html representativo dinamicamente mediante la herramienta utilizada
                para Prolog. Se encontró que tenemos diversas opciones a elegir en el uso de html y se ejemplifico
                con codigo cada una de ellas. Hubieron 3 ejemplos creando el "Hola Mundo" utilizando las opciones de html
                explicadas anteriormente a esa sección y asi ya poder en completo funcionamiento nuestra primer
                aplicacion web utilizando Prolog.'
            ),
            p(
                [style='padding: 5px 200px;text-align: justify;'],
                'Concluyendo se explic sobre formularios POST de como crearlos mediante ejemplos de codigo.
                Que eiquetas utilizar y como. Luego ejemplificamos como hacer para obtener la informacion del 
                formulario y como mostrarla. Por ultimo se obtuvo el conocimiento como trabajaba un lenguaje de
                programación desarrollado en los años 70s en el area de desarrollo web sin ser el area para el
                cual fue diseñado originalmente. Gracias a esto podemos apreciar aun mejor las herramientas que
                tenemos actualmente para el desarrollo web. Incluyendo frameworks y con esto podemos ver como el
                desarrollo web a cambiado en comparación a varios aos atras. En nuestros dias disponemos 
                de numerosas herramientas para los trabajos que antes a lenguajes como Prolog eran los mas
                indicados para resolverlos.'
            ),br(''),br(''),br(''),hr('')

        ]
    ).

bibliography -->
    html(
        [
            h1([style='text-align: center;'],'Bibliografía'),
            br(''),
            p(
                [style='padding: 5px 200px;text-align: justify;'],
                [
                    'Creating Web Applications in SWI-Prolog: ', 
                    a('http://www.pathwayslms.com/swipltuts/html/index.html')
                    
                ]
            ),
            p(
                [style='padding: 5px 200px;text-align: justify;'],
                [
                    'Swi-Prolog Documentation: ', 
                    a('https://www.swi-prolog.org/pldoc/doc_for?object=manual')
                    
                ]  
            ),
            p(
               [style='padding: 5px 200px;text-align: justify;'],
               [
                   'Programación Web con Prolog',
                   a('https://blog.adrianistan.eu/programacion-web-prolog')
               ] 
            )
        ]
    ).    

        