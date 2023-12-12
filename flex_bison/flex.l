%{
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "bison.tab.h"

%}

%%

[ \t\n]

"="                return EQUAL;
"=="                 return EQUALTO;
"<"                return MINOR;
"<="                return MINOREQUAL;
">"                return GREATER;
">="                return GREATEREQUAL;
"not"                return NOT;
"&&"                return AND;
"||"                    return OR;

"("                    return OPEN_PAR;
")"                    return CLOSE_PAR;
"{"                     return OPEN_BRACKET;
"}"                     return CLOSE_BRACKET;
";"               return SEMI_COLON;

"poinp"            return PRINT;
"knln"                 return SCANF;
"ok"              return FOR;
"ik"                   return IF;
"ilki"                return ELSE;
"int"               return VAR_TYPE;
"kuinh"                return VAR_TYPE;
"turn"                return RETURN;

"."             return CONCATENATE;
"+"                 return PLUS;
"-"                return MINUS;
"*"                return MULT;
"/"             return DIV;
","                 return COMMA;

[a-zA-Z0-9]            return STRING;
[a-zA-Z_][_a-zA-Z0-9]  return IDENTIFIER;
[0-9]+                 return INT;

.                      printf("Unknown token!n"); yyterminate();

%%