type token =
  | INTEGER of (int)
  | IDENTIFIER of (string)
  | GRAPH
  | SUBGRAPH
  | NODE
  | EDGE
  | LABEL
  | LPAREN
  | RPAREN
  | LBRA
  | RBRA
  | LSBRA
  | RSBRA
  | DQUOTE
  | SEMICOLON
  | COMMA
  | EQUALS
  | EDGEOP
  | COLON
  | EOF

open Parsing;;
let _ = parse_error;;
# 2 "parser.mly"

(* types file opening *)
  open Types
;;

# 32 "parser.ml"
let yytransl_const = [|
  259 (* GRAPH *);
  260 (* SUBGRAPH *);
  261 (* NODE *);
  262 (* EDGE *);
  263 (* LABEL *);
  264 (* LPAREN *);
  265 (* RPAREN *);
  266 (* LBRA *);
  267 (* RBRA *);
  268 (* LSBRA *);
  269 (* RSBRA *);
  270 (* DQUOTE *);
  271 (* SEMICOLON *);
  272 (* COMMA *);
  273 (* EQUALS *);
  274 (* EDGEOP *);
  275 (* COLON *);
    0 (* EOF *);
    0|]

let yytransl_block = [|
  257 (* INTEGER *);
  258 (* IDENTIFIER *);
    0|]

let yylhs = "\255\255\
\001\000\003\000\004\000\002\000\002\000\005\000\005\000\005\000\
\006\000\006\000\006\000\006\000\006\000\009\000\009\000\009\000\
\011\000\011\000\011\000\011\000\012\000\012\000\012\000\012\000\
\012\000\012\000\008\000\008\000\008\000\008\000\014\000\014\000\
\014\000\014\000\007\000\007\000\013\000\013\000\015\000\015\000\
\010\000\010\000\010\000\000\000"

let yylen = "\002\000\
\002\000\001\000\001\000\005\000\004\000\003\000\001\000\002\000\
\003\000\001\000\001\000\001\000\001\000\002\000\002\000\002\000\
\004\000\003\000\002\000\003\000\003\000\004\000\004\000\005\000\
\005\000\004\000\002\000\003\000\003\000\002\000\002\000\003\000\
\002\000\003\000\001\000\002\000\001\000\002\000\002\000\004\000\
\004\000\005\000\003\000\002\000"

let yydefred = "\000\000\
\000\000\000\000\000\000\044\000\000\000\002\000\000\000\000\000\
\001\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\010\000\011\000\012\000\000\000\000\000\000\000\000\000\
\014\000\000\000\000\000\015\000\016\000\000\000\000\000\000\000\
\038\000\005\000\000\000\000\000\000\000\036\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\043\000\009\000\000\000\
\006\000\000\000\000\000\000\000\029\000\028\000\004\000\020\000\
\000\000\000\000\041\000\000\000\000\000\034\000\032\000\000\000\
\017\000\042\000\003\000\040\000\000\000\000\000\026\000\024\000\
\025\000"

let yydgoto = "\002\000\
\004\000\005\000\015\000\068\000\016\000\017\000\018\000\019\000\
\020\000\021\000\025\000\043\000\022\000\037\000\033\000"

let yysindex = "\013\000\
\014\255\000\000\000\255\000\000\019\000\000\000\036\255\017\255\
\000\000\012\255\001\255\012\255\012\255\036\255\070\255\020\255\
\030\255\000\000\000\000\000\000\039\255\044\255\036\255\255\254\
\000\000\036\255\050\255\000\000\000\000\052\255\080\255\080\255\
\000\000\000\000\036\255\016\255\012\255\000\000\012\255\074\255\
\012\255\071\255\073\255\079\255\036\255\000\000\000\000\072\255\
\000\000\075\255\039\255\039\255\000\000\000\000\000\000\000\000\
\080\255\012\255\000\000\081\255\091\255\000\000\000\000\007\255\
\000\000\000\000\000\000\000\000\080\255\080\255\000\000\000\000\
\000\000"

let yyrindex = "\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\032\255\000\000\
\084\255\000\000\000\000\000\000\060\255\061\255\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\085\255\000\000\063\255\000\000\066\255\000\000\
\068\255\000\000\000\000\000\000\000\000\000\000\000\000\037\255\
\000\000\032\255\053\255\058\255\000\000\000\000\000\000\000\000\
\000\000\069\255\000\000\000\000\000\000\000\000\000\000\086\255\
\000\000\000\000\000\000\000\000\087\255\088\255\000\000\000\000\
\000\000"

let yygindex = "\000\000\
\000\000\000\000\253\255\000\000\246\255\000\000\000\000\000\000\
\000\000\061\000\249\255\245\255\062\000\241\255\000\000"

let yytablesize = 101
let yytable = "\008\000\
\006\000\006\000\006\000\030\000\028\000\029\000\039\000\027\000\
\006\000\007\000\026\000\041\000\040\000\001\000\038\000\044\000\
\003\000\006\000\009\000\011\000\042\000\069\000\070\000\024\000\
\049\000\014\000\023\000\047\000\048\000\053\000\034\000\054\000\
\050\000\056\000\060\000\062\000\063\000\006\000\010\000\011\000\
\012\000\013\000\037\000\037\000\035\000\014\000\037\000\039\000\
\039\000\037\000\065\000\039\000\071\000\064\000\039\000\024\000\
\036\000\072\000\073\000\045\000\042\000\036\000\046\000\033\000\
\033\000\042\000\042\000\033\000\031\000\031\000\013\000\035\000\
\031\000\030\000\013\000\035\000\027\000\030\000\019\000\018\000\
\027\000\006\000\019\000\018\000\055\000\058\000\031\000\057\000\
\032\000\059\000\061\000\066\000\067\000\032\000\007\000\008\000\
\051\000\052\000\021\000\022\000\023\000"

let yycheck = "\003\000\
\002\001\002\001\002\001\014\000\012\000\013\000\022\000\011\000\
\002\001\010\001\010\001\013\001\023\000\001\000\022\000\026\000\
\003\001\002\001\000\000\004\001\024\000\015\001\016\001\012\001\
\035\000\010\001\010\001\031\000\032\000\037\000\011\001\039\000\
\036\000\041\000\045\000\051\000\052\000\002\001\003\001\004\001\
\005\001\006\001\011\001\012\001\015\001\010\001\015\001\011\001\
\012\001\018\001\058\000\015\001\064\000\057\000\018\001\012\001\
\018\001\069\000\070\000\010\001\064\000\018\001\011\001\011\001\
\012\001\069\000\070\000\015\001\011\001\012\001\011\001\011\001\
\015\001\011\001\015\001\015\001\011\001\015\001\011\001\011\001\
\015\001\002\001\015\001\015\001\011\001\013\001\017\001\017\001\
\019\001\011\001\019\001\011\001\002\001\019\001\011\001\011\001\
\036\000\036\000\013\001\013\001\013\001"

let yynames_const = "\
  GRAPH\000\
  SUBGRAPH\000\
  NODE\000\
  EDGE\000\
  LABEL\000\
  LPAREN\000\
  RPAREN\000\
  LBRA\000\
  RBRA\000\
  LSBRA\000\
  RSBRA\000\
  DQUOTE\000\
  SEMICOLON\000\
  COMMA\000\
  EQUALS\000\
  EDGEOP\000\
  COLON\000\
  EOF\000\
  "

let yynames_block = "\
  INTEGER\000\
  IDENTIFIER\000\
  "

let yyact = [|
  (fun _ -> failwith "parser")
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'graph) in
    Obj.repr(
# 31 "parser.mly"
               (_1)
# 183 "parser.ml"
               : Types.graph))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 34 "parser.mly"
                        (_1)
# 190 "parser.ml"
               : 'identifiant))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 35 "parser.mly"
                       (_1)
# 197 "parser.ml"
               : 'compass_pt))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 3 : 'identifiant) in
    let _4 = (Parsing.peek_val __caml_parser_env 1 : 'stmt_list) in
    Obj.repr(
# 38 "parser.mly"
                                       (Graph(_2,_4))
# 205 "parser.ml"
               : 'graph))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 1 : 'stmt_list) in
    Obj.repr(
# 39 "parser.mly"
                            (Graph1(_3))
# 212 "parser.ml"
               : 'graph))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'stmt) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'stmt_list) in
    Obj.repr(
# 42 "parser.mly"
                            (_1::_3)
# 220 "parser.ml"
               : 'stmt_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'stmt) in
    Obj.repr(
# 43 "parser.mly"
       (_1::[])
# 227 "parser.ml"
               : 'stmt_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'stmt) in
    Obj.repr(
# 44 "parser.mly"
                 (_1::[])
# 234 "parser.ml"
               : 'stmt_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'identifiant) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'identifiant) in
    Obj.repr(
# 47 "parser.mly"
                               (Stmt4(_1,_3))
# 242 "parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'node_stmt) in
    Obj.repr(
# 48 "parser.mly"
           ( Stmt1(_1) )
# 249 "parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'edge_stmt) in
    Obj.repr(
# 49 "parser.mly"
           ( Stmt2(_1) )
# 256 "parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'attr_stmt) in
    Obj.repr(
# 50 "parser.mly"
           ( Stmt3(_1) )
# 263 "parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'subgraph) in
    Obj.repr(
# 51 "parser.mly"
           ( Stmt5(_1) )
# 270 "parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'attr_list) in
    Obj.repr(
# 55 "parser.mly"
                ( N(_2))
# 277 "parser.ml"
               : 'attr_stmt))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'attr_list) in
    Obj.repr(
# 56 "parser.mly"
                ( N(_2))
# 284 "parser.ml"
               : 'attr_stmt))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'attr_list) in
    Obj.repr(
# 57 "parser.mly"
                ( N(_2))
# 291 "parser.ml"
               : 'attr_stmt))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 2 : 'a_list) in
    let _4 = (Parsing.peek_val __caml_parser_env 0 : 'attr_list) in
    Obj.repr(
# 61 "parser.mly"
                             ( _2::_4 )
# 299 "parser.ml"
               : 'attr_list))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'a_list) in
    Obj.repr(
# 62 "parser.mly"
                    ( _2::[] )
# 306 "parser.ml"
               : 'attr_list))
; (fun __caml_parser_env ->
    Obj.repr(
# 63 "parser.mly"
             ( [] )
# 312 "parser.ml"
               : 'attr_list))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'attr_list) in
    Obj.repr(
# 64 "parser.mly"
                       ( _3 )
# 319 "parser.ml"
               : 'attr_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'identifiant) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'identifiant) in
    Obj.repr(
# 68 "parser.mly"
                               ( (_1,_3)::[] )
# 327 "parser.ml"
               : 'a_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 3 : 'identifiant) in
    let _3 = (Parsing.peek_val __caml_parser_env 1 : 'identifiant) in
    Obj.repr(
# 69 "parser.mly"
                                          ( (_1,_3)::[] )
# 335 "parser.ml"
               : 'a_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 3 : 'identifiant) in
    let _3 = (Parsing.peek_val __caml_parser_env 1 : 'identifiant) in
    Obj.repr(
# 70 "parser.mly"
                                      ((_1,_3)::[] )
# 343 "parser.ml"
               : 'a_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 4 : 'identifiant) in
    let _3 = (Parsing.peek_val __caml_parser_env 2 : 'identifiant) in
    let _5 = (Parsing.peek_val __caml_parser_env 0 : 'a_list) in
    Obj.repr(
# 71 "parser.mly"
                                                 ((_1,_3)::_5 )
# 352 "parser.ml"
               : 'a_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 4 : 'identifiant) in
    let _3 = (Parsing.peek_val __caml_parser_env 2 : 'identifiant) in
    let _5 = (Parsing.peek_val __caml_parser_env 0 : 'a_list) in
    Obj.repr(
# 72 "parser.mly"
                                             ( (_1,_3)::_5 )
# 361 "parser.ml"
               : 'a_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 3 : 'identifiant) in
    let _3 = (Parsing.peek_val __caml_parser_env 1 : 'identifiant) in
    let _4 = (Parsing.peek_val __caml_parser_env 0 : 'a_list) in
    Obj.repr(
# 73 "parser.mly"
                                       ((_1,_3)::_4 )
# 370 "parser.ml"
               : 'a_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'node_id) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'edgeRHS) in
    Obj.repr(
# 77 "parser.mly"
                ( Edge_stmt1(_1,_2) )
# 378 "parser.ml"
               : 'edge_stmt))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'node_id) in
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'edgeRHS) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'attr_list) in
    Obj.repr(
# 78 "parser.mly"
                           ( Edge_stmt3(_1,_2,_3) )
# 387 "parser.ml"
               : 'edge_stmt))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'subgraph) in
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'edgeRHS) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'attr_list) in
    Obj.repr(
# 79 "parser.mly"
                            ( Edge_stmt4(_1,_2,_3) )
# 396 "parser.ml"
               : 'edge_stmt))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'subgraph) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'edgeRHS) in
    Obj.repr(
# 80 "parser.mly"
                  ( Edge_stmt2(_1,_2) )
# 404 "parser.ml"
               : 'edge_stmt))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'node_id) in
    Obj.repr(
# 84 "parser.mly"
               ( EdgeRHS3(_2) )
# 411 "parser.ml"
               : 'edgeRHS))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'node_id) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'edgeRHS) in
    Obj.repr(
# 85 "parser.mly"
                        ( EdgeRHS1(_2,_3) )
# 419 "parser.ml"
               : 'edgeRHS))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'subgraph) in
    Obj.repr(
# 86 "parser.mly"
                 ( EdgeRHS4(_2) )
# 426 "parser.ml"
               : 'edgeRHS))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'subgraph) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'edgeRHS) in
    Obj.repr(
# 87 "parser.mly"
                         ( EdgeRHS2(_2,_3) )
# 434 "parser.ml"
               : 'edgeRHS))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'node_id) in
    Obj.repr(
# 91 "parser.mly"
        ( Node_stmt2(_1))
# 441 "parser.ml"
               : 'node_stmt))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'node_id) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'attr_list) in
    Obj.repr(
# 92 "parser.mly"
                   ( Node_stmt1(_1,_2))
# 449 "parser.ml"
               : 'node_stmt))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'identifiant) in
    Obj.repr(
# 96 "parser.mly"
            ( Node_id2(_1))
# 456 "parser.ml"
               : 'node_id))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'identifiant) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'port) in
    Obj.repr(
# 97 "parser.mly"
                  ( Node_id1(_1,_2))
# 464 "parser.ml"
               : 'node_id))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'identifiant) in
    Obj.repr(
# 101 "parser.mly"
                  ( Port1(_2))
# 471 "parser.ml"
               : 'port))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 2 : 'identifiant) in
    let _4 = (Parsing.peek_val __caml_parser_env 0 : 'compass_pt) in
    Obj.repr(
# 102 "parser.mly"
                                    ( Port2(_2,_4))
# 479 "parser.ml"
               : 'port))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 1 : 'stmt_list) in
    Obj.repr(
# 105 "parser.mly"
                             ( Subgraph1(_3) )
# 486 "parser.ml"
               : 'subgraph))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 3 : 'identifiant) in
    let _4 = (Parsing.peek_val __caml_parser_env 1 : 'stmt_list) in
    Obj.repr(
# 106 "parser.mly"
                                          ( Subgraph2(_2,_4))
# 494 "parser.ml"
               : 'subgraph))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'stmt_list) in
    Obj.repr(
# 107 "parser.mly"
                     ( Subgraph1(_2))
# 501 "parser.ml"
               : 'subgraph))
(* Entry main *)
; (fun __caml_parser_env -> raise (Parsing.YYexit (Parsing.peek_val __caml_parser_env 0)))
|]
let yytables =
  { Parsing.actions=yyact;
    Parsing.transl_const=yytransl_const;
    Parsing.transl_block=yytransl_block;
    Parsing.lhs=yylhs;
    Parsing.len=yylen;
    Parsing.defred=yydefred;
    Parsing.dgoto=yydgoto;
    Parsing.sindex=yysindex;
    Parsing.rindex=yyrindex;
    Parsing.gindex=yygindex;
    Parsing.tablesize=yytablesize;
    Parsing.table=yytable;
    Parsing.check=yycheck;
    Parsing.error_function=parse_error;
    Parsing.names_const=yynames_const;
    Parsing.names_block=yynames_block }
let main (lexfun : Lexing.lexbuf -> token) (lexbuf : Lexing.lexbuf) =
   (Parsing.yyparse yytables 1 lexfun lexbuf : Types.graph)
