(lang dune 3.17)

(name menhir_ocamllex_starter)

(generate_opam_files false)

(source
 (github username/reponame))

(authors "Author Name <author@example.com>")

(maintainers "Maintainer Name <maintainer@example.com>")

(license LICENSE)

(documentation https://url/to/documentation)

(package
 (name menhir_ocamllex_starter)
 (synopsis "A short synopsis")
 (description "A longer description")
 (depends ocaml)
 (tags
  ("add topics" "to describe" your project)))

(using menhir 3.0)

; See the complete stanza docs at https://dune.readthedocs.io/en/stable/reference/dune-project/index.html
