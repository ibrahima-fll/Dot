(* middle end question 4 *)

(* file opening *)
open Middle_end_Q3

open Types

open Nodes

(* add an id and/or a port inside an empty tree *)

let node_id_port id port t = match port with 
  | Port1(id) -> if (Nodes.mem id t) then t else Nodes.add id (("port",id)::[]) t
  | Port2(id1,id2) -> if (Nodes.mem id t) then t else Nodes.add id ((id1,id2)::[]) t
;;

(* add the identifier to the tree *)

let node_id identifier t = match identifier with 
  | Node_id2(id) -> if (Nodes.mem id t) then t else Nodes.add id [] t 
  | Node_id1(id,port) -> node_id_port id port t 
;;

(* return the identifier of node_id *)

let node_return_id node_id = match node_id with 
  |Node_id2(id) -> id 
  |Node_id1(id,port) -> id 
;;

(* takes a node_id and a list then return the corresponding tree *)
let rec node_a_list_map _node_id l t = match l with 
  | [[]] -> node_id _node_id t
  | ((id1,id2)::r)::b ->  if (Nodes.mem (node_return_id _node_id) t) then 
  							node_a_list_map _node_id b (Nodes.add (node_return_id _node_id) 
							((Nodes.find (node_return_id _node_id) t)@(id1,id2)::[]) t)
 						else  
 							node_a_list_map _node_id b  (Nodes.add (node_return_id _node_id) ((id1,id2)::[]) t) 
  							| _ -> t 
;;


(* takes a node_id and an attr_list then return the corresponding tree *)
let rec node_attr_list_map _node_id _attr_list t = match _attr_list with 
  | [[]] -> node_id _node_id t 
  | a::r -> node_attr_list_map _node_id r (node_a_list_map _node_id _attr_list t)
  | _ -> t
;;

let node_stmt_map _node_id t = match _node_id with 
  | Node_stmt2(_node_id) -> node_id _node_id t 
  | Node_stmt1(node_id,attr_list) ->  node_attr_list_map node_id attr_list 
    (Nodes.add (node_return_id node_id) [] t)
;;

(* linked functions *)

let rec stmt_list_map stmt_list t = match stmt_list with 
  | [] -> t 
  | Stmt1(node_stmt)::b -> stmt_list_map b (node_stmt_map node_stmt t)
  | Stmt2(edge_stmt)::b -> stmt_list_map b (node_edge_stmt_map edge_stmt t)
  | Stmt5(subgraph)::b -> stmt_list_map b (node_subgraph subgraph t) 
  | a -> t 

and node_edge_stmt_map _edge_stmt t = match _edge_stmt with 
  | Edge_stmt1(_node_id,edgeRHS) -> node_edgeRHS_map edgeRHS (node_id _node_id t) 
  | Edge_stmt2(subgraph,edgeRHS) -> node_edgeRHS_map edgeRHS (node_subgraph subgraph t)
  | Edge_stmt3(_node_id,edgeRHS,attr_list) -> node_edgeRHS_map edgeRHS (node_id _node_id t)
  | Edge_stmt4(subgraph,edgeRHS,attr_list) -> node_edgeRHS_map edgeRHS (node_subgraph subgraph t) 

and node_edgeRHS_map _edgeRHS t = match _edgeRHS with
  | EdgeRHS3(_node_id) -> node_id _node_id t 
  | EdgeRHS4(subgraph) -> node_subgraph subgraph t 
  | EdgeRHS1(_node_id,edgeRHS) -> node_edgeRHS_map edgeRHS (node_id _node_id t)
  | EdgeRHS2(subgraph,edgeRHS) -> node_edgeRHS_map edgeRHS (node_subgraph subgraph t) 

and node_subgraph _subgraph t = match _subgraph with 
  | Subgraph1(stmt_list) -> stmt_list_map stmt_list t 
  | Subgraph2(id,stmt_list) -> stmt_list_map stmt_list t
;;

let noeud_aux a t = match a with 
  | Graph(id,[]) -> t 
  | Graph(id,stmt_list) -> stmt_list_map stmt_list t   
  | Graph1([]) -> t 
  | Graph1(stmt_list) -> stmt_list_map stmt_list t
;;
