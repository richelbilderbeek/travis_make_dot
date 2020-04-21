all:
	ifndef $(has_dot)
	  $(error "dot is not available please install graphviz")
	endif
	dot -Tpdf my.dot -o my.pdf

pics/out.png: Makefile
	make -Bnd | ../../makefile2graph/make2graph | dot -Tpng -o pics/out.png

clean: 
	rm -f output.txt


