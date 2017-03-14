%%

%class pruebas
%standalone
%8bit

%{
public void imprimirElemento(String elem, String tipo) {
       System.out.println("Detectado: " + elem + " -> " + tipo);
       }
%}

%%
public\ static     { imprimirElemento(yytext(), "Cabecera de metodo");}
\+\+|\-\-          { imprimirElemento(yytext(), "Operador de incremento/decremento");}
[+\-*/]            { imprimirElemento(yytext(), "Operador aritmetico");}
\<|>|<=|>=|==|\!=  { imprimirElemento(yytext(), "Operador relacional");}
=		   { imprimirElemento(yytext(), "Asignacion");}
,                  { imprimirElemento(yytext(), "coma");}
int|boolean|void   { imprimirElemento(yytext(), "Tipo de datos");}
return             { imprimirElemento(yytext(), "Sentencia return");}
for		   { imprimirElemento(yytext(), "Palabra reservada");}
do     		   { imprimirElemento(yytext(), "Palabra reservada");}
while 	       	   { imprimirElemento(yytext(), "Palabra reservada");}
true|false	   { imprimirElemento(yytext(), "Valor booleano");}
\(             	   { imprimirElemento(yytext(), "Apertura parentesis");}
\)	       	   { imprimirElemento(yytext(), "Cierre parentesis");}
\{	       	   { imprimirElemento(yytext(), "Apertura llave");}
\}	       	   { imprimirElemento(yytext(), "Cierre llave");}
\/\*		   { imprimirElemento(yytext(), "Comienzo de comentario");}
\*\/		   { imprimirElemento(yytext(), "Fin de comentario");}
;		   { imprimirElemento(yytext(), "Fin de sentencia");}
&&|\!|\|\| 	   { imprimirElemento(yytext(), "Operador logico");}
[0-9]+(\.[0-9]*)?  { imprimirElemento(yytext(), "Número literal");}
[a-z]+[a-zA-Z0-9_]*  { imprimirElemento(yytext(), "Identificador");}
.|\n	{}