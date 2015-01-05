open Middle_end_Q3

let html1 = "<!-- Preamble -->
<!--
Cette partie est commune à tous les fichiers produits.
-->
<!DOCTYPE html>
<html>
<head><meta charset=\"utf-8\"></head>
<body>
<script src=\"http://d3js.org/d3.v3.min.js\"></script>
<script>
var width = 960,
height = 500;
var svg = d3.select(\"body\").append(\"svg\")
.attr(\"width\", width)
.attr(\"height\", height);
var nodes = [];
var links = [];"
;;

print_string html1
;;


let html2 = "var force = d3.layout.force()
.size([width, height])
.nodes(nodes)
.links(links)
.linkDistance(50)
.charge(-200)
.on(\"tick\", tick)
.start();
var link = svg.selectAll(\".link\").data(force.links())
.enter().append(\"line\")
.attr(\"class\", \"link\")
.style(\"stroke-width\", \"1\")
.style(\"stroke\", \"black\");
var node = svg.selectAll(\".node\").data(force.nodes())
.enter().append(\"circle\")
.attr(\"class\", \"node\")
.attr(\"r\", function(d) {return (10 + d.label.length * 5); })
.style(\"stroke\", \"black\")
.style(\"stroke-width\", \"1\")
.attr(\"fill\", \"white\")
.call(force.drag);
var text = svg.selectAll(\".text\")
.data(force.nodes())
.enter().append(\"text\")
.call(force.drag);
var textLabels = text
.attr(\"x\", function(d) { return d.x; })
.attr(\"y\", function(d) { return d.y + 6; })
.text( function (d) { return d.label; })
.attr(\"font-family\", \"sans-serif\")
.attr(\"font-size\", \"20px\")
.attr(\"text-anchor\", \"middle\");
function tick() {
link.attr(\"x1\", function(d) { return d.source.x; })
.attr(\"y1\", function(d) { return d.source.y; })
.attr(\"x2\", function(d) { return d.target.x; })
.attr(\"y2\", function(d) { return d.target.y; });
node.attr(\"cx\", function(d) { return d.x; })
.attr(\"cy\", function(d) { return d.y; });
text.attr(\"x\", function(d) { return d.x; })
.attr(\"y\", function(d) { return d.y + 6; });
}
</script></body></html>"
;;




(* print nodes' parameters  *)
let print_params n = (List.fold_right (fun (a,b) c -> ", "^a^" : "^b^c) n "")^"};"
;;

(* print the corresponding javascript code of a node *)
let print_node (a,b) = "var "^a^" = { x = 20, y = 20"^(print_params b)^"\n nodes.push("^a^");\n"
;; 


(* print the corresponding javascript code of an edge *)
let print_edge ((a,b),c) = "var "^a^b^" = { source : "^a^", target : "^b^(print_params c)^"\n links.push("^a^b^");\n"
;;


(* print the node *)
let print_n h = Nodes.fold (fun c v t -> t^(print_node (c,v))) h ""
;;

(* print the edge *)
let print_e e = Edges.fold (fun a b t -> t^(print_edge (a,b))) e ""
;;


(* Print the graph *)
let print_graph n e = html1^(print_n n)^(print_e e)^html2 
;;
