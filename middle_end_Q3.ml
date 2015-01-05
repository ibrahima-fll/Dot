(* middle end question 3 *)

(* params type definition *)
type id = string
;;

(* params is a list of (key * value) *)
type params = (id * id) list
;;

(* a node is an identifier linked to his parameters *)
type node = (id * params)
;; 

(* nodes type definition using map module *)
module Nodes = Map.Make(String)
;;

type nodes = params Nodes.t
;;

(* edge type definition using map module *)
type edge = (id * id) * params
;;

module Couple = struct 
  type t = string * string
  let compare (x,y) (a,b) = match Pervasives.compare x a with 
    |0 -> Pervasives.compare y b 
    |c -> c
end

module Edges = Map.Make(Couple)
;;

type edges = edge Edges.t
;;



