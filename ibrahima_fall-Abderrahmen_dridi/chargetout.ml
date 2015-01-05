#load "types.cmo";;
#load "parser.cmo";;
#load "lexer.cmo";;
open Types
;;

let parse_line () =
try let lexbuf = Lexing.from_channel (open_in "test") in
let ast = Parser.graph Lexer.token lexbuf in ast
with Lexer.Eof -> failwith "Fin de fichier inattendue"
let a =  parse_line();;
