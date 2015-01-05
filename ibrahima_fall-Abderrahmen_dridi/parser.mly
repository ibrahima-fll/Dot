%{

(* types file opening *)
  open Types
;;

%}

/* Keywords */

%token<int> INTEGER
%token<string> IDENTIFIER 
%token GRAPH SUBGRAPH NODE EDGE LABEL 



/* Symbols */

%token LPAREN RPAREN LBRA RBRA LSBRA RSBRA DQUOTE
%token SEMICOLON COMMA EQUALS EDGEOP COLON
%token EOF


%start main 
%type <Types.graph> main


%%


main: graph EOF{$1};


identifiant: IDENTIFIER {$1}
compass_pt: IDENTIFIER {$1}

graph: 
	GRAPH identifiant LBRA stmt_list RBRA {Graph($2,$4)}
	|GRAPH LBRA stmt_list RBRA {Graph1($3)}

stmt_list:
	|stmt SEMICOLON stmt_list  {$1::$3}
 |stmt {$1::[]}
 |stmt SEMICOLON {$1::[]}

stmt:
identifiant EQUALS identifiant {Stmt4($1,$3)}
|node_stmt { Stmt1($1) }
|edge_stmt { Stmt2($1) }
|attr_stmt { Stmt3($1) }
|subgraph  { Stmt5($1) }


attr_stmt:
GRAPH attr_list { N($2)}
|NODE attr_list { N($2)}
|EDGE attr_list { N($2)}


attr_list:
LSBRA a_list RSBRA attr_list { $2::$4 }
|LSBRA a_list RSBRA { $2::[] }
|LSBRA RSBRA { [] }
|LSBRA RSBRA attr_list { $3 }


a_list:
identifiant EQUALS identifiant { ($1,$3)::[] }
|identifiant EQUALS identifiant SEMICOLON { ($1,$3)::[] }
|identifiant EQUALS identifiant COMMA {($1,$3)::[] }
|identifiant EQUALS identifiant SEMICOLON a_list {($1,$3)::$5 }
|identifiant EQUALS identifiant COMMA a_list { ($1,$3)::$5 }
|identifiant EQUALS identifiant a_list {($1,$3)::$4 }


edge_stmt:
node_id edgeRHS { Edge_stmt1($1,$2) }
|node_id edgeRHS attr_list { Edge_stmt3($1,$2,$3) }
|subgraph edgeRHS attr_list { Edge_stmt4($1,$2,$3) }
|subgraph edgeRHS { Edge_stmt2($1,$2) }


edgeRHS:
EDGEOP node_id { EdgeRHS3($2) }
|EDGEOP node_id edgeRHS { EdgeRHS1($2,$3) }
|EDGEOP subgraph { EdgeRHS4($2) }
|EDGEOP subgraph edgeRHS { EdgeRHS2($2,$3) }


node_stmt:
node_id { Node_stmt2($1)}
|node_id attr_list { Node_stmt1($1,$2)}


node_id:
identifiant { Node_id2($1)}
|identifiant port { Node_id1($1,$2)}


port:
COLON identifiant { Port1($2)}
|COLON identifiant COLON compass_pt { Port2($2,$4)}

subgraph:
SUBGRAPH LBRA stmt_list RBRA { Subgraph1($3) }
|SUBGRAPH identifiant LBRA stmt_list RBRA { Subgraph2($2,$4)}
|LBRA stmt_list RBRA { Subgraph1($2)}
