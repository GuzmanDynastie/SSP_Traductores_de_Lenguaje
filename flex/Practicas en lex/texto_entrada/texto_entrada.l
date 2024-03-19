%{
#include <stdio.h>
%}

%%
"  "+    { putchar(' '); }   /* Sustituir dos o más espacios por uno solo */

"\t\t"+  { putchar('\t'); }  /* Sustituir dos o más tabuladores por uno solo */

.        { putchar(yytext[0]); } /* Imprimir cualquier otro carácter */
%%

int yywrap() {
    return 1;
}

int main() {
    yylex();
    return 0;
}