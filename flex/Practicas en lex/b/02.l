/* Números enteros con y sin signo */

%{
#include <stdio.h>
%}

DIGITO [0-9]
NUM_ENTERO [-]?{DIGITO}+

%%
{NUM_ENTERO}   { printf("Numero entero: %s\n", yytext); }
.              ;
%%

int main() {
    yylex();
    return 0;
}

int yywrap() {
    return 1;
}