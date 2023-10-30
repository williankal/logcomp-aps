# logcomp-aps

# INTRODUÇÃO

A linguagem foi concebida para simplificar o processo de programação, reduzindo a quantidade de movimento dos dedos e sendo possível digitar com apenas uma mão.

# EBNF
```
PROGRAM = { STATEMENT };
BLOCK = "{", "\n", { STATEMENT }, "}" ;
ASSIGNMENT = IDENTIFIER, "=", BOOL EXPRESSION ;
STATEMENT = ( λ | PRINT | IF | FOR ), "\n" ;
PRINT = poinp", "(" BOOL EXPRESSION ")" ;
IF = "ik", BOOL EXPRESSION, BLOCK, ( λ | "else", BLOCK ) ;
FOR = "ok", ASSIGNMENT, ";", BOOL EXPRESSION, ";", ASSIGNMENT, BLOCK ;
BOOL EXPRESSION = BOOL TERM, { "||", BOOL TERM } ;
BOOL TERM = REL EXPRESSION, { "&&", REL EXPRESSION } ;
REL EXPRESSION = EXPRESSION, { ( "==" | ">" | "<" ), EXPRESSION } ;
EXPRESSION = TERM, { ( "+" | "-" ), TERM } ;
TERM = FACTOR, { ( "*" | "/" ), FACTOR } ;
FACTOR = ( NUMBER | IDENTIFIER | ( "+" | "-" | "!" ), FACTOR | "(", REL EXPRESSION, ")" | SCAN ) ;
SCAN = knln "(" ")";
IDENTIFIER = LETTER, { LETTER | DIGIT } ;
TYPE = ( "INT" | "STR" ) ;
STRING = { LETTER | DIGIT | " " | "" } ;
NUMBER = DIGIT, { DIGIT } ;
LETTER = ( A | ... | Z ) ;
DIGIT = ( 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 0 ) ;
```
