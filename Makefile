SRC=src/java
DEST=build/classes
CLASSPATH=args4j-2.32.jar

clock.jar: $(DEST) $(DEST)/com/github/clock/Clock.class $(DEST)/com/github/clock/Main.class $(DEST)/com/github/clock/swing/ClockViewer.class
	jar cvfm clock.jar src/resources/manifest.mf -C $(DEST) com

build/classes:
	mkdir -p $(DEST)

$(DEST)/com/github/clock/Clock.class: src/java/com/github/clock/Clock.java
	javac -cp $(DEST):$(CLASSPATH) -d $(DEST) -sourcepath $(SRC) $^

$(DEST)/com/github/clock/Main.class: src/java/com/github/clock/Main.java
	javac -cp $(DEST):$(CLASSPATH) -d $(DEST) -sourcepath $(SRC) $^

$(DEST)/com/github/clock/swing/ClockViewer.class: src/java/com/github/clock/swing/ClockViewer.java
	javac -cp $(DEST):$(CLASSPATH) -d $(DEST) -sourcepath $(SRC) $^

clean:
	rm -rf $(DEST) clock.jar
