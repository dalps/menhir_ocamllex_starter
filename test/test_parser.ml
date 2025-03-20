open LambdaParser

let%test "test_expr_1" =
  Driver.parse_string "fun x -> x" = Ast.Fun ("x", Var "x")

let%test "test_expr_2" =
  Driver.parse_string "(fun x -> x) x" = Ast.(App (Fun ("x", Var "x"), Var "x"))

let%test "test_application_left_associative" =
  Driver.parse_string "x y z" = Driver.parse_string "(x y) z"

let%test "test_lambda_body_1" =
  Driver.parse_string "fun x -> x x" = Driver.parse_string "fun x -> (x x)"

let%test "test_lambda_body_2" =
  Driver.parse_string "fun x -> fun y -> x y"
  = Driver.parse_string "fun x -> (fun y -> (x y))"

let%test "test_newlines_are_ignored" =
  Driver.parse_string {|
    fun x -> x
  |} = Ast.(Fun ("x", Var "x"))

let%test "test_file" =
  Driver.parse_file "/absolute/path/to/test/example.lambda"
  = Ast.(App (Fun ("x", App (Var "x", Var "x")), Fun ("y", Var "y")))
