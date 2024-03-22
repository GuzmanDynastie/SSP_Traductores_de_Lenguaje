%{
#include <stdio.h>
int count = 0;
%}

%%
[0-9]     { count++; }   

.          ;               /* Ignora otros caracteres */
\n         ;               /* Ignora saltos de línea */
%%

int main() {  
    yylex();
    printf("Se detectaron %d numeros enteros en el archivo.\n", count);
    return 0;
}

int yywrap() {
    return 1;
}
