(** The type signatures in this module are not yet for public consumption.

    Please don't rely on them in any way.*)

type o = Ocaml.atd_ocaml_repr
type j = Json.json_repr

type oj_mapping =
    (Ocaml.atd_ocaml_repr, Json.json_repr) Mapping.mapping

val defs_of_atd_modules
  : ('a *
     [< `Type of
          Atd_ast.loc * (string * string list * Atd_annot.t) * Atd_ast.type_expr ]
       list
    ) list
  -> ('a * (Ocaml.atd_ocaml_repr, Json.json_repr) Mapping.def list) list
