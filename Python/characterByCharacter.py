# -*- coding: utf-8 -*-
import re


"""

!String Automata
*Recognize strings in a text
*Return an array containig all the strings in a text
*Or an empty array if the text doesn't have strings
*Simulate the regular expresion ['"][^"']*['"]

@author eglopezl@unah.hn
@version 1.0

"""

class characterByCharacter:

    def __init__(self):
        pass

    def stringAutomata(self,text):

        result = []
        count = 0
        string = []
        
        
        for i in range(len(text)):
            if text[i] == "\"" or text[i]=="'":
                count+=1
                if count == 2:
                    result.append("".join(string).strip())
                    string = []
                    count = 0
            elif(text[i] != "\"" or text[i] != "'") and count == 1:
                string += text[i]        
        return result
                



text = input('ingrese texto:')
print(characterByCharacter().stringAutomata(text))        