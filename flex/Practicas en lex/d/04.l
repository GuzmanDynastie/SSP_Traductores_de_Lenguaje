/* Números reales en notación exponencial con signo opcional y con punto también opcional */

%{
#include <stdio.h>
%}

DIGITO [0-9]
NUM_EXP [-]?{DIGITO}+"."?{DIGITO}+"e"[-+]?{DIGITO}+

%%
{NUM_EXP}    { printf("Numero real en notacion exponencial: %s\n", yytext); }
.            ;
%%

int main() {
    yylex();
    return 0;
}

int yywrap() {
    return 1;
}