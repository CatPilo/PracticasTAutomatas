JAVA=*.java;
CLASS=*.class;
all:
	jflex -inputstreamctor expLanguage.lex
	javacup expLanguage.cup
	javac -cp /usr/share/javacup/lib/javacup-runtime.jar Yylex.java sym.java parser.java
	java parser pruebas.txt

clean:
	rm $(JAVA)
	rm $(CLASS)
