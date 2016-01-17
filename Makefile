all:
	bnfc --cpp -m -o build/cpp/ grammar.bnfc 
	bnfc --haskell -m -o build/haskell/ grammar.bnfc 
	make -C build
	bnfc --latex -o doc/ grammar.bnfc  
	make -C doc 
