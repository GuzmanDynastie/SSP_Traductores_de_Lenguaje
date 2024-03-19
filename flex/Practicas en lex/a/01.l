%{
#include <stdio.h>
%}

LETRA [a-zA-Z]
DIGITO [0-9]
VARIABLE {LETRA}({LETRA}|{DIGITO})*

%%
{VARIABLE}+     { printf("Nombre de variable: %s\n", yytext); }
%%

int main() {
    yylex();
    return 0;
}

int yywrap() {
    return 1;
}