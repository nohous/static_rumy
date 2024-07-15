CC = gcc
CFLAGS = -Wall -Wextra

TARGET = rumy

$(TARGET): rumy2.o rumy4.o main.o
	$(CC) $(CFLAGS) -o $(TARGET) rumy2.o rumy4.o main.o

rumy2.o: rumy2.c
	$(CC) $(CFLAGS) -c rumy2.c

rumy4.o: rumy4.c
	$(CC) $(CFLAGS) -c rumy4.c

main.o: main.c
	$(CC) $(CFLAGS) -c main.c

rumy: 

clean:
	rm -f $(TARGET) *.o