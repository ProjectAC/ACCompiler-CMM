CC = gcc
CFLAGS = -O2

ansicParser: Debug/essentials.o Debug/ansicParser.o Debug/ansicLex.o Debug/treeNodeTypeStrings.o Debug/tree.o Debug/testParser.o
	$(CC) -o Debug/parser Debug/essentials.o Debug/ansicLex.o Debug/treeNodeTypeStrings.o Debug/tree.o Debug/ansicParser.o Debug/testParser.o -lfl -lm

Debug/essentials.o: Essentials/essentials.c
	$(CC) -o Debug/essentials.o -c Essentials/essentials.c $(CFLAGS)

Parser/ansicLex.c:
	flex -o Parser/ansicLex.c Parser/ansicLex.l

Debug/ansicLex.o: Parser/ansicLex.c
	$(CC) -o Debug/ansicLex.o -c Parser/ansicLex.c $(CFLAGS)

Parser/ansicParser.c:
	bison -o Parser/ansicParser.c -d Parser/ansicParser.y

Debug/ansicParser.o: Parser/ansicParser.c
	$(CC) -o Debug/ansicParser.o -c Parser/ansicParser.c $(CFLAGS)

Debug/treeNodeTypeStrings.o: Tree/treeNodeTypeStrings.c
	$(CC) -o Debug/treeNodeTypeStrings.o -c Tree/treeNodeTypeStrings.c $(CFLAGS)

Debug/tree.o: Tree/tree.c
	$(CC) -o Debug/tree.o -c Tree/tree.c $(CFLAGS)

Debug/testParser.o: Test/testParser.c
	$(CC) -o Debug/testParser.o -c Test/testParser.c $(CFLAGS)

clean:
	rm Debug/*.o
	rm Parser/*.c
	rm Parser/*.h