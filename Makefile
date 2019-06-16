CC = gcc
CPP = g++
CFLAGS = -O2
CPPFLAGS = -O2

CMM: Debug/essentials.o Debug/ansicParser.o Debug/ansicLex.o Debug/treeNodeTypeStrings.o Debug/tree.o Debug/context.o Debug/generator.o Debug/genOperators.o Debug/genControl.o Debug/main.o
	$(CPP) -o Debug/cmm Debug/essentials.o Debug/ansicParser.o Debug/ansicLex.o Debug/treeNodeTypeStrings.o Debug/tree.o Debug/context.o Debug/generator.o Debug/genOperators.o Debug/genControl.o Debug/main.o -lfl -lm

Test:
	Debug/cmm ./Code/TestA+B/ours.c ./Code/TestA+B/ours.s
	gcc ./Code/TestA+B/ours.c -S -o ./Code/TestA+B/ours-gcc.s
	gcc ./Code/TestA+B/main.c -S -o ./Code/TestA+B/main.s
	gcc ./Code/TestA+B/ours.s ./Code/TestA+B/main.s -o ./Code/main

Debug/main.o:
	$(CC) -o Debug/main.o -c Test/main.c

Debug/context.o:
	$(CPP) -o Debug/context.o -c Generator/context.cpp

Debug/generator.o: 
	$(CPP) -o Debug/generator.o -c Generator/generator.cpp

Debug/genOperators.o: 
	$(CPP) -o Debug/genOperators.o -c Generator/genOperators.cpp

Debug/genControl.o: 
	$(CPP) -o Debug/genControl.o -c Generator/genControl.cpp

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