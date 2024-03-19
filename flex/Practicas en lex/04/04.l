/* Números reales en notación exponencial con signo opcional y con punto también opcional */

%{
#include <stdio.h>
%}

DIGITO [0-9]
NUM_EXP [-]?{DIGITO}+"."?{DIGITO}+"E"[-+]?{DIGITO}+

%%
{NUM_EXP}    { printf("Número real en notación exponencial: %s\n", yytext); }
.            ;
%%

int main() {
    yylex();
    return 0;
}