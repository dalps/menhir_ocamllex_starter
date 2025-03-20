open LambdaParser

let usage_msg =
  {|
  lambda [input_file]

  Parse a lambda program. If input_file is not provided, read and parse the standard input interactively.
|}
let input_file : string option ref = ref None
let set_input_file filename = input_file := Some filename

let () =
  Arg.parse [] set_input_file usage_msg;
  match !input_file with
  | None ->
      (* Read and parse stdin in a loop *)
      let rec loop () =
        let l = read_line () in
        (try
           let _ = Driver.parse_string l in
           print_endline "ok"
         with
        | Parser.Error -> print_endline "parser error"
        | _ -> print_endline "lexing error");
        loop ()
      in
      loop ()
  | Some f ->
      (* Read and parse the source file *)
      Driver.parse_file f |> ignore
