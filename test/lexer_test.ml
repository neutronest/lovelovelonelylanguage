open OUnit2;;
open Bitstring;;

let should_parse_blank_placeholder =
  assert_equal "sig Hello" (LLM.Lexer.lex (bitstring_of_string " Hello"))

let suite =
  "xxx" >::: [
    "should_parse_blank_placeholder" >:: (fun _ -> should_parse_blank_placeholder)
  ]

let _ = run_test_tt_main suite