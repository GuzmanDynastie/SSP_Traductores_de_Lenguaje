%{
#include <stdio.h>
%}

%%
[+-]?[0-9]+\.[0-9]+                     { printf("REAL_COMA_FLOTANTE\n"); }
[+-]?[0-9]+\.?[0-9]*[eE][+-]?[0-9]+     { printf("REAL_EXPONENCIAL\n"); }
[+-]?[0-9]+                             { printf("ENTERO\n"); } 
.                      ;                       
\n                     ;                       
%%

int main() {
    yylex();
    return 0;
}

int yywrap() {
    return 1;
}