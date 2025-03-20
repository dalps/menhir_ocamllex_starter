# menhir_ocamllex_starter

This repository contains my go-to boilerplate code for creating and debugging OCaml grammarware using [Menhir](https://fpottier.gitlabpages.inria.fr/menhir/) and [ocamllex](https://ocaml.org/manual/5.3/lexyacc.html).

Clone / fork and edit as you please.

## Project structure

Pretty self explanatory:

```
.
├── bin
│   ├── dune
│   └── main.ml         # Frontend code
├── dune-project
├── lib
│   ├── ast.ml          # Abstract Syntax Tree type definition
│   ├── driver.ml       # Functions to drive the parser
│   ├── dune
│   ├── lexer.mll
│   └── parser.mly
└── test
    ├── dune
    ├── example.lambda
    └── test_parser.ml
```

## Bookmarks

- [Menhir doc](https://cambium.inria.fr/~fpottier/menhir/manual.html)
- [Menhir demos](https://gitlab.inria.fr/fpottier/menhir/-/tree/master/demos?ref_type=heads)
- [ocamllex doc](https://ocaml.org/manual/5.3/lexyacc.html)

