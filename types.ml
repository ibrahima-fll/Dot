(* types definition *)

type id = string
;;

type compass_pt = string
;;

type a_list = (id * id) list
;;

type attr_list = (a_list) list
;;

type attr_stmt = N of (attr_list) 
;;

type port = 
	    Port1 of (id)
	    |Port2 of (id * compass_pt)
;;

type node_id =
       Node_id1 of (id * port)
       |Node_id2 of (id)
;;

type node_stmt =
		 Node_stmt1 of (node_id * attr_list)
		 |Node_stmt2 of (node_id)
;;

type subgraph =  
		Subgraph1 of (stmt_list)
		|Subgraph2 of (id * stmt_list)


and  edgeRHS = 
	       EdgeRHS1 of (node_id  * edgeRHS)
           |EdgeRHS2 of (subgraph * edgeRHS)
	       |EdgeRHS3 of (node_id )
	       |EdgeRHS4 of (subgraph)


and  edge_stmt = 
		 Edge_stmt1 of (node_id * edgeRHS)
		 |Edge_stmt2 of (subgraph* edgeRHS)
		 |Edge_stmt3 of (node_id * edgeRHS * attr_list)
		 |Edge_stmt4 of (subgraph* edgeRHS * attr_list )


and  stmt = 
	    Stmt1 of (node_stmt )
	    |Stmt2 of (edge_stmt)
	    |Stmt3 of (attr_stmt )
	    |Stmt4 of (id * id)
	    |Stmt5 of (subgraph)


and  stmt_list = (stmt) list
;;

type graph =
	    |Graph of (id * stmt_list)
	    |Graph1 of(stmt_list)
;;
