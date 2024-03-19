/* Operadores matemáticos: =, +, -, *, /, DIV, MOD */

%{
#include <stdio.h>
%}

OPERADOR [=+*/%-]|DIV|MOD

%%
{OPERADOR}    { printf("Operador matemático: %s\n", yytext); }
.             ;
%%

int main() {
    yylex();
    return 0;
}