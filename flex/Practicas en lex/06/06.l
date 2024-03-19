%{
#include <stdio.h>
%}

%%
[^;\n]+     { printf("%s", yytext); }    /* Imprimir texto normal */
";"         { printf("\n"); }             /* Imprimir nueva línea después de ';' */
.|\n        { printf("%s", yytext); }    /* Imprimir cualquier otro carácter */
%%

int main(int argc, char *argv[]) {
    // Comprobar si se proporciona el nombre del archivo como argumento
    if (argc != 2) {
        printf("Uso: %s archivo_de_entrada\n", argv[0]);
        return 1;
    }

    // Abrir el archivo de entrada
    FILE *entrada = fopen(argv[1], "r");
    if (entrada == NULL) {
        printf("No se pudo abrir el archivo %s\n", argv[1]);
        return 1;
    }

    // Analizar el archivo de entrada
    yyin = entrada;
    yylex();

    // Cerrar el archivo de entrada
    fclose(entrada);

    return 0;
}

int yywrap() {
    return 1;
}