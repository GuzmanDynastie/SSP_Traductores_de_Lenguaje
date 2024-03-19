%{
#include <stdio.h>
int count = 0; // Variable para almacenar el recuento de números enteros
%}

%%
[0-9]+     { count++; }    /* Incrementar el contador cada vez que se detecte un número entero */
.          ;               /* Ignorar otros caracteres */
\n         ;               /* Ignorar saltos de línea */
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

    // Imprimir el recuento de números enteros detectados
    printf("Se detectaron %d numeros enteros en el archivo.\n", count);

    return 0;
}

int yywrap() {
    return 1;
}
