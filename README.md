# chibicc

## EBNF
```ebnf
expr    = mul ("+" mul | "-" mul)*
mul     = primary ("*" primary | "/" primary)*
primary = "(" expr ")" | num
```