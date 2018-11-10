PROGRAM = Lab3
INSTALL_PATH = /bin/Lab3/
MAIN = main.cpp
CALCULATION = calculation.cpp

RUN = ./$(PROGRAM)
COMPILE = g++ $(MAIN) $(CALCULATION) -o $(PROGRAM)

.PHONY: compile install clean

all: compile

compile:
	$(COMPILE)

clean:
	@echo "Cleaning from src dir.."
	if [ -e $(PROGRAM) ]; then rm $(PROGRAM); fi;
	@echo "Cleaning from $(INSTALL_PATH) dir.."
	if [ -e $(INSTALL_PATH)$(PROGRAM) ]; then rm $(INSTALL_PATH)$(PROGRAM); fi;

install:
	@echo "Installing.."
	mkdir -p $(INSTALL_PATH)
	if ! [ -a $(PROGRAM) ]; then $(COMPILE); fi;
	cp $(PROGRAM) $(INSTALL_PATH)
	$(INSTALL_PATH)$(RUN)