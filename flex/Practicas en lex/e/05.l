/* Operadores matemáticos: =, +, -, *, /, DIV, MOD */

%{
#include <stdio.h>
%}

OPERADOR [=+*/%-]|DIV|MOD

%%
{OPERADOR}    { printf("Operador matematico: %s\n", yytext); }
.             ;
%%

int main() {
    yylex();
    return 0;
}

int yywrap() {
    return 1;
}