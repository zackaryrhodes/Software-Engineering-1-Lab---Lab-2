CC = gcc
CFLAGS = -Wall

TARGET = program

# Build the target executable
$(TARGET): main.o isEven.o isOdd.o
	$(CC) $(CFLAGS) -o $(TARGET) main.o isEven.o isOdd.o

# Compile main.o
main.o: main.c isEven.h isOdd.h
	$(CC) $(CFLAGS) -c main.c
	

# Compile isEven.o
isEven.o: isEven.c isEven.h
	$(CC) $(CFLAGS) -c isEven.c
	

# Compile isOdd.o
isOdd.o: isOdd.c isOdd.h
	$(CC) $(CFLAGS) -c isOdd.c
	

.PHONY: clean
clean:
	rm -f *.o $(TARGET)



