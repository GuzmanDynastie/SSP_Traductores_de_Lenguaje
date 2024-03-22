%{
#include <stdio.h>
%}

%%
[0-9]{3}-[0-9]{3}-[0-9]{4}      { printf("Numero de telefono movil: %s\n", yytext); }   /* Formato xxx-xxx-xxxx */
[0-9]{10}                       { printf("Numero de telefono movil / fijo: %s\n", yytext); }   /* Formato xxxxxxxxxx */
.                              ;                                                     
\n                             ;                                                     
%%

int main() {
    yylex();
    return 0;
}

int yywrap() {
    return 1;
}