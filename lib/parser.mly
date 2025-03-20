%{
  open Ast
%}

%token FUN "fun" ARROW "->" LPAREN "(" RPAREN ")" EOF
%token <string> VAR

%start <expr> start

%nonassoc "->"
%nonassoc VAR "fun" "("
%nonassoc app

%%

start:
  | e = expr EOF { e }

expr:
  | "fun" x = VAR "->" e = expr { Fun (x, e) }
  | f = expr e = expr { App (f, e) } %prec app
  | "(" e = expr ")" { e }
  | x = VAR { Var x }