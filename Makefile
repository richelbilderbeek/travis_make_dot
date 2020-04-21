has_dot = $(shell command -v dot 2> /dev/null)

all: my.pdf
ifndef has_dot
  $(error "'dot' is not available please install 'graphviz'")
endif

my.pdf: my.dot
	dot my.dot -Tpdf -o my.pdf

pics/out.png: Makefile
	make -Bnd | ../../makefile2graph/make2graph | dot -Tpng -o pics/out.png

clean: 
	rm -f my.pdf


