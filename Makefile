# Define the compiler
CC = gcc

# Define the target executable
TARGET = edit_text

# Define the source files
SRCS = main.c

# Define the object files
OBJS = $(SRCS:.c=.o)

# Define the compiler flags
CFLAGS = -Wall -Wextra -O2

# Default target
all: $(TARGET)

# Rule to link the object files to create the executable
$(TARGET): $(OBJS)
	$(CC) $(CFLAGS) -o $(TARGET) $(OBJS)

# Rule to compile the source files into object files
%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

# Clean up the build files
clean:
	rm -f $(TARGET) $(OBJS)

# Phony targets
.PHONY: all clean
