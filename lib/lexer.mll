{
  open Parser
}

let white = [' ''\t']+
let newline = "\n" | "\r" | "\n\r"
let id = ['a'-'z''A'-'Z']

rule read_token =
  parse
  | "("        { LPAREN }
  | ")"        { RPAREN }
  | "fun"      { FUN }
  | "->"       { ARROW }
  | white      { read_token lexbuf }
  | id         { VAR (Lexing.lexeme lexbuf) }
  | newline    { Lexing.new_line lexbuf; read_token lexbuf }
  | eof        { EOF }