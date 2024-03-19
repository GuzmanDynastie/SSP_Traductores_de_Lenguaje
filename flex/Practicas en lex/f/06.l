/* Paréntesis: (, ) */

%{
#include <stdio.h>
%}

%%
"("    { printf("Parentesis izquierdo\n"); }
")"    { printf("Parentesis derecho\n"); }
.      ;
%%

int main() {
    yylex();
    return 0;
}

int yywrap() {
    return 1;
}