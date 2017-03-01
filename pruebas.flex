%%

%class pruebas
%standalone
%8bit

%{
public void imprimirElemento(String elem, String tipo) {
       System.out.println("Detectado: " + elem + " - " + tipo);
       }
%}

%%
public\ static     { imprimirElemento(yytext(), "Cabecera de metodo");}

++|\-\-             { imprimirElemento(yytext(), "Operador de incremento/decremento");}
[+\-*/]             { imprimirElemento(yytext(), "Operador aritmetico");}
\<|>|<=|>=|==|\!= { imprimirElemento(yytext(), "Operador relacional");}
=		  {imprimirElemento(yytext(), "Asignacion");}
,                  { imprimirElemento(yytext(), "coma");}
int|boolean	   { imprimirElemento(yytext(), "Tipo de datos");}
return             {imprimirElemento(yytext(), "Sentencia return");}
true|false	   {imprimirElemento(yytext(), "Valor booleano");}
[a-zA-z_]+\(	   {imprimirElemento(yytext(), "Nombre de metodo");}
\(             {imprimirElemento(yytext(), "Apertura parentesis");}
\)	       {imprimirElemento(yytext(), "Cierre parentesis");}
\{	       {imprimirElemento(yytext(), "Apertura llave");}
\}	       {imprimirElemento(yytext(), "Cierre llave");}
;		   {imprimirElemento(yytext(), "Fin de sentencia");}
[0-9]+(\.[0-9]*)?  { imprimirElemento(yytext(), "Número literal");}
[a-z]+	   { imprimirElemento(yytext(), "Nombre de variable");}
. {}