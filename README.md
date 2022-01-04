# chibicc
This repository is "Syakyou" edition of [rui314/chibicc](https://github.com/rui314/chibicc).  
"Syakyou" means copy with hands in Japanese.

## EBNF
```ebnf
program       = function-definition*
function-definition = declspec declarator "{" compound-stmt
stmt          = "return" expr ";"
              | "if" "(" expr ")" stmt ("else" stmt)?
              | "for" "(" expr-stmt expr? ";" expr? ")" stmt
              | "while" "(" expr ")" stmt
              | "{" compound-stmt
              | expr-stmt
compound-stmt = (declaration | stmt)* "}"
declaration   = declspec (declarator ("=" expr)? ("," declarator ("=" expr)?)*)? ";"
declspec      = "int"
declarator    = "*"* ident type-suffix
type-suffix   = "(" func-params? ")"
expr-stmt     = expr? ";"
expr          = assign
assign        = equality ("=" assign)?
equality      = relational ("==" relational | "!=" relational)*
relational    = add ("<" add | "<=" add | ">" add | ">=" add)*
add           = mul ("+" mul | "-" mul)*
mul           = unary ("*" unary | "/" unary)*
unary         = ("+" | "-" | "*" | "&") unary
              | primary
primary       = "(" expr ")" | ident func-args? | num
funcall       = ident "(" (assign ("," assign)*)? ")"
```
