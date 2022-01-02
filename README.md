# chibicc

## EBNF
```ebnf
program     = stmt*
stmt        = "return" expr ";"
            | expr-stmt
expr-stmt   = expr ";"
expr        = assign
assig       = equality ("=" assign)?
equality    = relational ("==" relational | "!=" relational)*
relational  = add ("<" add | "<=" add | ">" add | ">=" add)*
add         = mul ("+" mul | "-" mul)*
mul         = unary ("*" unary | "/" unary)*
unary       = ("+" | "-") unary
            | primary
primary     = "(" expr ")" | ident | num
```
