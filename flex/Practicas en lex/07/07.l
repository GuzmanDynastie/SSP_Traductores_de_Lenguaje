%{
#include <stdio.h>
%}

%%
[0-9]{3}-[0-9]{3}-[0-9]{4}      { printf("Numero de telefono movil: %s\n", yytext); }   /* Formato xxx-xxx-xxxx */
[0-9]{10}                       { printf("Numero de telefono movil: %s\n", yytext); }   /* Formato xxxxxxxxxx */
.                              ;                                                     /* Ignora otros caracteres */
\n                             ;                                                     /* Ignora saltos de línea */
%%

int main(int argc, char *argv[]) {
    if (argc != 2) {
        printf("Uso: %s archivo_de_entrada\n", argv[0]);
        return 1;
    }

    FILE *entrada = fopen(argv[1], "r");
    if (entrada == NULL) {
        printf("No se pudo abrir el archivo %s\n", argv[1]);
        return 1;
    }

    yyin = entrada;
    yylex();

    fclose(entrada);

    return 0;
}

int yywrap() {
    return 1;
}