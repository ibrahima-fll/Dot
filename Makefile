CAMLC=ocamlc
CAMLLEX=ocamllex
CAMLYACC=ocamlyacc

fin: types.cmo parser.cmi parser.cmo lexer.cmo middle_end_Q3.cmo middle_end_Q4.cmo back_end.cmo chargetout.ml

# generic rules :
#################
.SUFFIXES: .mll .mly .mli .ml .cmi .cmo .cmx
.mll.mli:
	$(CAMLLEX) $<
.mll.ml:
	$(CAMLLEX) $<
.mly.mli:
	$(CAMLYACC) $<
.mly.ml:
	$(CAMLYACC) $<
.mli.cmi:
	$(CAMLC) -c $(FLAGS) $<
.ml.cmo:
	$(CAMLC) -c $(FLAGS) $<
