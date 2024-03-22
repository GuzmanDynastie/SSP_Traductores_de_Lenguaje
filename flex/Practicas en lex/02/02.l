%{
#include <stdio.h>
%}

%%
" "+        { putchar(' '); }

"\t\t"+     { putchar('\t'); }

.           { putchar(yytext[0]); }
%%

int main() {
    yylex();
    return 0;
}

int yywrap() {
    return 1;
}