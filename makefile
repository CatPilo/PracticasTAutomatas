JAVA=*.java;
CLASS=*.class;
all:
	jflex -inputstreamctor expLanguage.lex
	javacup expLanguage.cup
	javac -cp /usr/share/javacup/lib/javacup-runtime.jar Yylex.java sym.java parser.java
	@sleep 1;
	@echo "\n-- ejecutando fichero.txt"
	@java parser fichero.txt
	@sleep 1;
	@echo "\n-- ejecutando fichero2.txt"
	@java parser fichero2.txt
	@sleep 1;
	@echo "\n-- ejecutando fichero3.txt"
	@java parser fichero3.txt

clean:
	rm $(JAVA)
	rm $(CLASS)
