PROJECT_NAME = Team04

BUILD = build

SRC = src/function.c\
main.c\

#TEST_SRC = src/function.c\
test/test_function.c\

INC = -Iinc\

PROJECT_OUTPUT = $(BUILD)/$(PROJECT_NAME).out

#TEST_OUTPUT = $(BUILD)/Test_$(PROJECT_NAME).out

#DOCUMENTATION_OUTPUT = documentation/html

$(PROJECT_NAME):all

#.PHONY: all test doc run clean

all: $(SRC) $(BUILD)
	gcc $(SRC) $(INC) -o $(PROJECT_OUTPUT) -lm

run:$(PROJECT_NAME)
	./$(PROJECT_OUTPUT)

#test:$(BUILD)
#	gcc $(TEST_SRC) $(INC) -o $(TEST_OUTPUT) -lcunit -lm
#	./$(TEST_OUTPUT)

#doc:
	make -C documentation

#clean:
#	rm -rf $(BUILD) $(DOCUMENTATION_OUTPUT)

$(BUILD):
	mkdir build