# -*- coding: utf-8 -*-
import sys
from tabulate import tabulate

class LexicalAnalizer:

    def __init__(self):
        self.line = 0   
    
    
    def read(self):
        param = sys.argv[1:]
        if len(param) != 1:
            quit("Error: No se ha encontrado el archivo")
        self.file = param[0]
        f = open(self.file,"r")
        self.text = f.read()
        f.close()  

        return self

    def getTokens(self):

        
        self.tokens = []
        data = []
        text = self.text
       
        for i in range(len(text)):
            if i < len(text)-1:
                if text[i] == " ":
                    self.tokens.append(data)
                    data = []
                elif(text[i] == "(" or text[i] == ")"):
                    self.tokens.append(data)
                    self.tokens.append(text[i])
                    data = []    
                elif(text[i] == '\n'):
                    if len(data) != 0:
                        self.tokens.append(data)
                        self.line += 1
                        data = []
                elif(text[i] == "," or text[i] == ":" or text[i] == ";"):
                    self.tokens.append(data)
                    self.tokens.append(text[i])
                    data = []
                else:
                    data += text[i]                
            else:
                data += text[i]
                self.tokens.append(data)


        return self 

      

    def lexicalAnalysis(self):
        
        tokens = self.tokens
        data = []
        result = []
        
        for token in tokens:
            
            for i in range(len(token)):
                if token[i] == ",":
                    result += [["Separate Token: ","%s"%token[i]]]
                elif token[i] == ";":
                    result += [["End of instruction Token: ","%s" % token[i]]]
                elif token[i] == "+":
                    result += [["Operation Token: ","%s" % token[i]]]   
                elif token[i] == "=":
                     result += [["Asignation Token: ","%s" % token[i]]]
                elif token[i] == "{":
                    result += [["Starting statement Token: ","%s" % token[i]]] 
                elif token[i] == "}":
                    result += [["End statement Token: ","%s" % token[i]]]    
                elif token[i] == "(":
                    result += [["Start parameter Token: ","%s" % token[i]]]     
                elif token[i] == ")":
                    result += [["End parameter Token: ","%s" % token[i]]]              
                elif len(token) ==1 and token[i] != ":":
                    result += [["User Identifier Token: ","%s" % token[i]]]
                elif token[i] == ":":
                    result += [["Function definition Token: ","%s" % token[i]]]    
                elif token[i] == "#":
                    result += [["Symbol Token: ","%s" % token[i]]]
                elif token[i] == "\"":
                    result += [["Quote Token: ","%s" % token[i]]]        
                else:
                    data += token[i]
                    
                    
                        


        return result
    
        
            

parser = LexicalAnalizer().read().getTokens().lexicalAnalysis()
#print(tabulate(parser))
print(parser)        

