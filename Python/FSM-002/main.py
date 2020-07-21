# -*- coding: utf-8 -*-
from reader import Reader
from automata import Automata


"""
!String Automata Character BY Character
*Read a file and recognize the strings in the file
*Return the strings founded
*Without use of re

@author eduardolopezlainez2001@gmail.com
@version 1.0.0
"""

reader = Reader().read()
automata = Automata(reader).run()

print("\n\n Results: ")

for token in automata.tokens:
    value,valueType = token.info()
    print("\t%s - %s" % (value,valueType)) 