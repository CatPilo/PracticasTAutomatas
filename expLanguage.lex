/* --------------------------Seccion codigo-usuario ------------------------ */
import java_cup.runtime.Symbol;

%%
/* ----------------- Seccion de opciones y declaraciones----------------- */

%cup

%%

/* ------------------------ Seccion de reglas lexicas ---------------------- */

"public static"      { return new Symbol(sym.CM);}
"++"			   { return new Symbol(sym.OID);}
"--"			   { return new Symbol(sym.OID);}
"+"				   { return new Symbol(sym.OA);}
"-"				   { return new Symbol(sym.OA);}
"*"				   { return new Symbol(sym.OA);}
"/"				   { return new Symbol(sym.OA);}
"<"				   { return new Symbol(sym.OR);}
">"				   { return new Symbol(sym.OR);}
"<="			   { return new Symbol(sym.OR);}
">="			   { return new Symbol(sym.OR);}
"=="			   { return new Symbol(sym.OR);}
"!="			   { return new Symbol(sym.OR);}
=				   { return new Symbol(sym.A);}
,                  { return new Symbol(sym.C);}
int 			   { return new Symbol(sym.TD);}	   
boolean 		   { return new Symbol(sym.TD);}
void			   { return new Symbol(sym.TD);}
return             { return new Symbol(sym.R);}
do 				   { return new Symbol(sym.PR);}
while 			   { return new Symbol(sym.W);}
true			   { return new Symbol(sym.B);}
false			   { return new Symbol(sym.B);}
"("				   { return new Symbol(sym.AP);}
")"				   { return new Symbol(sym.CP);}
"{"				   { return new Symbol(sym.AL);}
"}"				   { return new Symbol(sym.CL);}
;				   { return new Symbol(sym.FS);}

&&				   { return new Symbol(sym.OL);}
"!"			       { return new Symbol(sym.OLU);}
"||"			   { return new Symbol(sym.OL);}
[0-9]+(\.[0-9]*)?  { return new Symbol(sym.NL, new Integer(yytext()));}
[a-z]+[a-zA-Z0-9_]* { return new Symbol(sym.I);}
[\t\r\n\f ] { /* Ignora delimitaciones */ }
. {System.err.println("Caracter Ilegal: "+yytext());}
