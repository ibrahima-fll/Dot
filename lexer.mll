{
  open Parser
  exception Eof
}


rule token = parse
    |"//"_*                    { token lexbuf } (* skip single line comments *)
	|"/*"_*"*/"              { token lexbuf } (* skip multiple line comments *)
	|"#"_*                     { token lexbuf } (* skip comments *)
    |['\n']                  { token lexbuf } (* skip newline *)
  	|[' ''\t''\n']           { token lexbuf } (* Skip blanks *)
	|"_*\\n_*"               { token lexbuf } (* Skip newline in comments *)
	(* Keywords and symbols *)
	|'{'                     { LBRA }
	|"\""                    { DQUOTE }
	|'}'                     { RBRA }
	|'('                     { LPAREN }
	|')'                     { RPAREN }
	|'['                     { LSBRA }
	|']'                     { RSBRA }
	|','                     { COMMA }
	|"="                     { EQUALS }
	|';'                     { SEMICOLON }
	|"--"                    { EDGEOP } 
	|eof                     { raise Eof }
	|'='                     { EQUALS }
	|':'                     { COLON }
	|"graph"                 { GRAPH }
	|"subgraph"              { SUBGRAPH }
	|"node"                  { NODE }    
	|"edge"                  { EDGE }
	|"label"                 { LABEL }
	|['A'-'Z' 'a'-'z'] ['A'-'Z' 'a'-'z' '0'-'9']* as string { IDENTIFIER (string) }
	    
