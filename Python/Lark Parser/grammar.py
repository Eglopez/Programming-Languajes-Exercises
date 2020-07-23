# -*- coding: utf-8 -*-

grammar = """ 

    //El axioma inicial
    ?start: exp+

    //Definicion de una expresion
    ?exp: var "=" string ";" -> assignvar 
        | var "=" arithmeticoperation ";" -> assignvar
        | "print" "("? string ")"? ";" -> print
        | "print" "("? var ")"? ";" -> print

    //Definicion de operacion aritmetica
    ?arithmeticoperation: arithmeticoperationatom
        | arithmeticoperation "+" arithmeticoperationatom -> sum
        | arithmeticoperation "-" arithmeticoperationatom -> sub

    //Definicion de un atomo de operacion aritmetica
    ?arithmeticoperationatom: var -> getvar
        | number 
        | "-" arithmeticoperationatom
        | "("? arithmeticoperation ")"

    //Definicion de una cadena
    ?string: /"[^"]*"/
        | /'[^']*'/

    //Definicion de una variable
    ?var: /[a-zA-Z]\w*/

    //Definicion de un numero
    ?number: /\d+(\.\d)?/

    //Ignorar espacios, saltos de lineas y tabulados
    %ignore /\s/                


"""

