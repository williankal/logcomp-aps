%{
  #include<stdio.h>
  int yylex();
  void yyerror(const char *s) { printf("ERROR: %sn", s); }
%}

%token IDENTIFIER INT STRING
%token EQUAL EQUALTO MINOR MINOREQUAL GREATER GREATEREQUAL NOT AND OR
%token OPEN_PAR CLOSE_PAR OPEN_BRACKET CLOSE_BRACKET SEMI_COLON
%token PRINT SCANF FOR IF ELSE VAR_TYPE RETURN
%token CONCATENATE SEPARATOR PLUS MINUS MULT DIV COMMA

%start program

%%

program : block 
        ;

block : OPEN_BRACKET statement CLOSE_BRACKET
      | OPEN_BRACKET CLOSE_BRACKET
      ;
        
statement : assigment
          | block
          | print
          | if
          | for
          | var_type
          SEMI_COLON
          ;
        
relexpression: expression EQUALTO expression
             | expression MINOR expression
             | expression GREATER expression
             | expression MINOREQUAL expression
             | expression GREATEREQUAL expression
             | expression
             ;

expression: term PLUS term
          | term MINUS term
          | term OR term
          | term CONCATENATE term
          | term
          ;

term: factor
    | factor MULT factor
    | factor DIV factor
    | factor AND factor
    ;

factor: INT
    | STRING
    | IDENTIFIER
    | PLUS factor
    | MINUS factor
    | NOT factor
    | SCANF OPEN_PAR CLOSE_PAR
    | OPEN_PAR relexpression CLOSE_PAR
    ;

assigment:  IDENTIFIER EQUAL relexpression
        | IDENTIFIER OPEN_PAR bool_exp CLOSE_PAR;

bool_exp: bool_term 
         | EQUALTO;

bool_term: relexpression
            | AND;

print: PRINT OPEN_PAR bool_exp CLOSE_PAR;

if: IF OPEN_PAR bool_exp CLOSE_PAR FOR block;

for: FOR OPEN_PAR relexpression CLOSE_PAR statement else;
else: ELSE block | SEMI_COLON;
var_type: VAR_TYPE IDENTIFIER
        | SEPARATOR IDENTIFIER
        ;

%%

int main(){
  yyparse();
  return 0;
}