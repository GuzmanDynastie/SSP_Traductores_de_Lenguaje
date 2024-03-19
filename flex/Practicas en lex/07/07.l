/* Comentarios */

%{
#include <stdio.h>
%}

%%
#.*\n    /* No hacemos nada, simplemente ignoramos el comentario */
.        ;
%%

int main() {
    yylex();
    return 0;
}