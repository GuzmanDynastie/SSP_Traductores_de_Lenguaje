%{
#include <stdio.h>
%}

LETRA [a-zA-Z]
DIGITO [0-9]

OPERADOR [=+*/%-]|DIV|MOD
VARIABLE {LETRA}({LETRA}|{DIGITO})*
NUM_ENTERO [-]?{DIGITO}+
NUM_EXP [-]?{DIGITO}+"."?{DIGITO}+"e"[-+]?{DIGITO}+
NUM_REAL [-]?{DIGITO}+"."{DIGITO}+

%%
{OPERADOR}    { printf("Operador matematico: %s\n", yytext); }
{VARIABLE}+     { printf("Nombre de variable: %s\n", yytext); }
{NUM_ENTERO}   { printf("Numero entero: %s\n", yytext); }
{NUM_EXP}    { printf("Numero real en notacion exponencial: %s\n", yytext); }
{NUM_REAL}   { printf("Numero real en coma flotante: %s\n", yytext); }
"("    { printf("Parentesis izquierdo\n"); }
")"    { printf("Parentesis derecho\n"); }
#.*\n
.              ;
%%

int main() {
    yylex();
    return 0;
}

int yywrap() {
    return 1;
}