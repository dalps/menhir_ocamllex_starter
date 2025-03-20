type expr =
  | Var : string -> expr
  | Fun : string * expr -> expr
  | App : expr * expr -> expr
