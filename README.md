# chibicc
This repository is "Syakyou" edition of [rui314/chibicc](https://github.com/rui314/chibicc).  
"Syakyou" means copy with hands in Japanese.

## EBNF
```ebnf
program      = stmt*
stmt         = "return" expr ";"
             | "if" "(" expr ")" stmt ("else" stmt)?
             | "for" "(" expr-stmt expr? ";" expr? ")" stmt
             | "while" "(" expr ")" stmt
             | "{" command-stmt
             | expr-stmt
command-stmt = (declaration | stmt)* "}"
declaration  = declspec (declarator ("=" expr)? ("," declarator ("=" expr)?)*)? ";"
declspec     = "int"
declarator   = "*"* ident
expr-stmt    = expr? ";"
expr         = assign
assign       = equality ("=" assign)?
equality     = relational ("==" relational | "!=" relational)*
relational   = add ("<" add | "<=" add | ">" add | ">=" add)*
add          = mul ("+" mul | "-" mul)*
mul          = unary ("*" unary | "/" unary)*
unary        = ("+" | "-" | "*" | "&") unary
             | primary
primary      = "(" expr ")" | ident | num
```
