open Bitstring;;

type expr = 
  | Def | Extern
  | Ident of string
  | Number of float
  | Kwd of char

