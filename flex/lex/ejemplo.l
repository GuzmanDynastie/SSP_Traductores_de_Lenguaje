%{
#include <stdio.h>
%}

DIGITO [0-9]
LETRA [a-zA-Z]

%%

{DIGITO}+    { printf("Número: %s\n", yytext); }
{LETRA}+     { printf("Identificador: %s\n", yytext); }
.            { printf("Carácter no válido: %s\n", yytext); }

%%

int yywrap() {
    return 1;
}

int main() {
    yylex();
    return 0;
}