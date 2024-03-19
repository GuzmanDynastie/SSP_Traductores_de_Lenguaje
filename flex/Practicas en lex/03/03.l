/* Números reales en coma flotante con y sin signo */

%{
#include <stdio.h>
%}

DIGITO [0-9]
NUM_REAL [-]?{DIGITO}+"."{DIGITO}+

%%
{NUM_REAL}   { printf("Número real en coma flotante: %s\n", yytext); }
.            ;
%%

int main() {
    yylex();
    return 0;
}