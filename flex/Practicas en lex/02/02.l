/* Números enteros con y sin signo */

%{
#include <stdio.h>
%}

DIGITO [0-9]
NUM_ENTERO [-]?{DIGITO}+

%%
{NUM_ENTERO}   { printf("Número entero: %s\n", yytext); }
.              ;
%%

int yywrap() {
    return 1;
}

int main() {
    yylex();
    return 0;
}