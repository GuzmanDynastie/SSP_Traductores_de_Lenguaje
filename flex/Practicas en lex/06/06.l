/* Paréntesis: (, ) */

%{
#include <stdio.h>
%}

%%
"("    { printf("Paréntesis izquierdo\n"); }
")"    { printf("Paréntesis derecho\n"); }
.      ;
%%

int main() {
    yylex();
    return 0;
}