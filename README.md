# logcomp-aps

# INTRODUÇÃO

A linguagem foi concebida para simplificar o processo de programação, reduzindo a quantidade de movimento dos dedos e sendo possível digitar com apenas uma mão. Nessa linguagem peculiar, conhecida como "Half-Keyboard Code" (HKK), a ênfase está na simplicidade e na eficiência na digitação, utilizando apenas metade do teclado, normalmente a metade direita, para escrever código.

Embora possa parecer um desafio no início, os desenvolvedores que se adaptam ao HKK geralmente encontram um fluxo de trabalho mais eficiente, à medida que a linguagem é projetada para maximizar a produtividade com um conjunto limitado de teclas.


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

# Tabela de símbolos trocados:

| Token-Golang | GoLang-HHK |
|--------------|------------|
| Println       | poinp         |
| if         | ik       |
| else         | ilki       |
| for         | ok       |
|Scanln|knln|
|var|blu| 
|int|int|
|string|kuinh|



# Exemplos de código

INPUT
```	
blu l int
blu k_1 int
l = knln()

//adicionado <= e >=
ok k_1 = 0; k_1 <= l; k_1 = k_1 + 1 {
	poinp(k_1)
} 
```

OUTPUT
```
4
0
1
2
3
4
```


Ex2 -INPUT(Auxilia na contagem de letras do lado esquerdo do teclado, limite máx de 30 para conseguir rodar o código)

```
blu r_1 int
r_1 = knln()
blu rr_1 int
blu rrrr_3 int
blu rrrrrr_5 int
blu asdasdsa int
blu zsdaasda int
blu adazxczcxzczczxcz int
```
OUPUT
```
Segue a lista de ocorrências de letras do lado esquerdo do teclado{'q': 0, 'c': 5, 'e': 0, 's': 5, 'a': 8, 'd': 5, 'f': 0, 'g': 0, 'z': 7, 'x': 3, 'v': 0, 'r': 14, 'w': 0}
Traceback (most recent call last):
  File "C:\Users\kenzo\logcomp-aps\main.py", line 760, in <module>
    teste = Parser.run(code)
  File "C:\Users\kenzo\logcomp-aps\main.py", line 746, in run
    expressao_semcoment = PrePro(arquivo).filter()
  File "C:\Users\kenzo\logcomp-aps\main.py", line 104, in filter
    raise TypeError(f"\033[31mWOWWW, você utilizou {quantidade_esquerdas} letras do lado esquerdo do teclado, um uso muito alto para o código proseguir. Reescreva o código\n\033[0m")
TypeError: WOWWW, você utilizou 47 letras do lado esquerdo do teclado, um uso muito alto para o código proseguir. Reescreva o código
```

###  Easter Egg

A quantidade de letras do lado esquerdo utilizado podem causar que a linguagem se revolte.





