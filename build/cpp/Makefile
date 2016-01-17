CC = g++
CCFLAGS = -g -W -Wall

FLEX = flex
FLEX_OPTS = -Pgrammar

BISON = bison
BISON_OPTS = -t -pgrammar

OBJS = Absyn.o Lexer.o Parser.o Printer.o

.PHONY: clean distclean

all: Testgrammar

clean:
	rm -f *.o Testgrammar grammar.aux grammar.log grammar.pdf grammar.dvi grammar.ps grammar

distclean: clean
	rm -f Absyn.C Absyn.H Test.C Parser.C Parser.H Lexer.C Skeleton.C Skeleton.H Printer.C Printer.H Makefile grammar.l grammar.y grammar.tex 

Testgrammar: ${OBJS} Test.o
	@echo "Linking Testgrammar..."
	${CC} ${CCFLAGS} ${OBJS} Test.o -o Testgrammar

Absyn.o: Absyn.C Absyn.H
	${CC} ${CCFLAGS} -c Absyn.C

Lexer.C: grammar.l
	${FLEX} -oLexer.C grammar.l

Parser.C: grammar.y
	${BISON} grammar.y -o Parser.C

Lexer.o: Lexer.C Parser.H
	${CC} ${CCFLAGS} -c Lexer.C

Parser.o: Parser.C Absyn.H
	${CC} ${CCFLAGS} -c Parser.C

Printer.o: Printer.C Printer.H Absyn.H
	${CC} ${CCFLAGS} -c Printer.C

Skeleton.o: Skeleton.C Skeleton.H Absyn.H
	${CC} ${CCFLAGS} -c Skeleton.C

Test.o: Test.C Parser.H Printer.H Absyn.H
	${CC} ${CCFLAGS} -c Test.C

