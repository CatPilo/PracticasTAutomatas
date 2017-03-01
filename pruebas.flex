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

[+\-*/]             { imprimirElemento(yytext(), "Operador aritmetico");}
\<|>|<=|>=|==|\!= { imprimirElemento(yytext(), "Operador relacional");}
,                  { imprimirElemento(yytext(), "coma");}
int|boolean	   { imprimirElemento(yytext(), "Tipo de datos");}
return             {imprimirElemento(yytext(), "Sentencia return");}
[0-9]+(\.[0-9]*)?  { imprimirElemento(yytext(), "Número literal");}
. {}