%{
#include<stdio.h>
#include<stdlib.h>
extern int yylex();
extern int yyparse();
%}
%token A B NL
%%
stmt:s B NL {printf("valid string\n");exit(0);};
s:s A
|
; 
%%
int main()
{
 printf(“Enter the string\n”);
 yyparse();
}
int yyerror()
{
printf("Invalid expression\n");
return 0;
}
