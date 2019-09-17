

let () =
  let bits = Bitstring.bitstring_of_string " Hello, world!" in
  print_endline (LLM.Lexer.lex bits);;