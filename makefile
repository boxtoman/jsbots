CC = gcc
CFLAGS = -Wall
OBJ = vector.o jsbot.o game.o
FRAMEWORKS = -framework OpenGL -framework JavaScriptCore -framework Foundation

jsbots: main.m $(OBJ)
	$(CC) $< -o $@ $(OBJ) $(FRAMEWORKS) $(CFLAGS)

%.o: %.m %.h
	$(CC) -c -o $@ $< $(CFLAGS)

clean:
	rm jsbots *o
