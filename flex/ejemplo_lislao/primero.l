%{
#include <stdio.h>
	
%}
%option noyywrap

%%

begin {printf("reconocido-begin-\n"); }
end {printf("reconocido-end\n"); }

%%
int main(){
	return yylex();

}