%{
#include <stdio.h>
%}

%%
[^;\n]+     { printf("%s", yytext); }       /* Imprimir texto normal */
";"         { printf("\n"); }               /* Imprimir nueva línea después de ';' */
.|\n        { printf("%s", yytext); }       /* Imprimir cualquier otro carácter */
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