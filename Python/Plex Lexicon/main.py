# -*- coding: utf-8 -*-
from plex import *
from tabulate import tabulate
import sys

"""
!Lexical Analizer: Plex (Lex for python)
?Lexical Analizer that understand:
    *Comments
    *Strings
    *Logical operators
    *Spaces
    *Break lines
    *tabulates

@author eduardolopezlainez2001@gmail.com
@version 0.1
"""

class LexicalAnalysis:

    def __init__(self):
        
        stringDouble = Str("\"") + Rep(AnyBut("\"")) + Str("\"")
        stringSimple = Str("'") + Rep(AnyBut("'")) + Str("'")
        space = Any(" \t\n")
        comment = Str("{") + Rep(AnyBut("}")) + Str("}")
        assignOp = Str("=")
        sumOP = Str("+")
        ifKeyword = Str("if")

        self.lexicon = Lexicon(
            [
                (stringDouble, "String"),
                (stringSimple, "String"),
                (sumOP, "Sum/Concat Operator"),
                (assignOp, "Assign Operator"),
                (space, IGNORE)
            ]
        )

    def parse(self):

        lexicon = self.lexicon
        lexicalTable = []

        filename = sys.argv[1:][0]
        f = open(filename, "r")
        scanner = Scanner(lexicon,f,filename)

        while True:

            try:
                token = scanner.read()

                if not token[0]:
                    break

                desc, val = token
                lexicalTable += [[val,desc]]

            except Exception as e:

                print("Lexical Error: %s" % (e))
                f.close()

                return False

        f.close()
        self.lexicalTable = lexicalTable

        return self

parser = (LexicalAnalysis())

if parser.parse():
    
    print("Lexical Analysis: ")
    print(tabulate(parser.lexicalTable))