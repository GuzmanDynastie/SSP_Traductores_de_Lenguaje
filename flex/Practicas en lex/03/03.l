%{
#include <stdio.h>
%}

LETRA [a-zA-Z]
DIGITO [0-9]

CADENA {LETRA}({LETRA}|{DIGITO})*

%%
{CADENA}+    { printf("%s", yytext); }
#.*         
%%

int main() {
    yylex();
    return 0;
}

int yywrap() {
    return 1;
}