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
           \investigation
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
            )
        ]
    ).    

        