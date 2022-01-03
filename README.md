# chibicc

## EBNF
```ebnf
program      = stmt*
stmt         = "return" expr ";"
             | "if" "(" expr ")" stmt ("else" stmt)?
             | "for" "(" expr-stmt expr? ";" expr? ")" stmt
             | "{" command-stmt
             | expr-stmt
command-stmt = stmt* "}"
expr-stmt    = expr? ";"
expr         = assign
assign       = equality ("=" assign)?
equality     = relational ("==" relational | "!=" relational)*
relational   = add ("<" add | "<=" add | ">" add | ">=" add)*
add          = mul ("+" mul | "-" mul)*
mul          = unary ("*" unary | "/" unary)*
unary        = ("+" | "-") unary
             | primary
primary      = "(" expr ")" | ident | num
```
