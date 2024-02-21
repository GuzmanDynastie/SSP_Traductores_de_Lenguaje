#include <stdio.h>

int matchRegex(const char *str, const char *pattern[]){
    while (*str){
        const char *s = str;
        const char *p = pattern;

        while (*p && (*p == *s || *p == '.')){
            p++;
            s++;
        } if (!*p){
            return 1;
        } str++;
    }
    return 0; // No coincide
}

int main() {
    char *texto = "Paulino tiene que realizar operaciones de sumar y Restar, por lo cual abrió una pestaña navegador para buscar informacion";
    int encontrado = 0;

    const char *patron[] = {"sumar", "Restar", "abrió"};

    if (matchRegex(texto, patron[0]) == 1){
        printf("el resultado de la suma es: %d", 5+7);
    }
    if (matchRegex(texto, patron[1]) == 1){
                printf("\nel resultado de la resta es: %d \n", 5-7);
    }
    if (matchRegex(texto, patron[2]) == 1){
                system("start chrome");
    }

    return 0;
}
