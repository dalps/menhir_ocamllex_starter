let parse_string s =
  let lexbuf = Lexing.from_string s in
  Parser.start Lexer.read_token lexbuf

let parse_file filename =
  let channel = open_in filename in
  let lexbuf = Lexing.from_channel channel in
  let parsed = Parser.start Lexer.read_token lexbuf in
  close_in channel;
  parsed
