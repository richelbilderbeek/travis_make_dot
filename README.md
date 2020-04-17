# travis_make_dot
Example how to use GNU make on Travis CI: dot

```
DOT := $(shell command -v dot 2> /dev/null)

all:
ifndef DOT
    $(error "dot is not available please install graphviz")
endif
    dot -Tpdf -o pres.pdf pres.dot 
```
