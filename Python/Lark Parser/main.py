# -*- coding: utf-8 -*-

""" 
    !Parser with Lark
    !Modules reader,semantic  and grammar of the same author

    @author eduardolopezlainez2001@gmail.com
    @version 0.1
"""

import sys
from reader import Reader
from semantic import Semantic
from lark import Lark, Transformer   
from grammar import *

reader = (Reader()).read()
parser = Lark(grammar,parser="lalr", transformer = Semantic())
language = parser.parse

sample = reader.text

try:
    language(sample)
except Exception as e:
     print("Error: %s" % e)
