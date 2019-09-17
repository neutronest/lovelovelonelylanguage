open Bitstring;;

let rec lex str = 
  match%bitstring str with
  | {| (" " | "\n") : 1*8 : string; stream : -1 : bitstring |} -> "sig " ^ (lex stream) 
  | {| stream : -1 : bitstring |} -> string_of_bitstring stream