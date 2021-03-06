LIB_DIR = `pwd`/lib
OJ_JAR = $(LIB_DIR)/OpenJava_1.1/openjava.jar
ETOC_JAR = $(LIB_DIR)/etoc/etoc.jar
JUNIT_JAR = $(LIB_DIR)/junit.jar
CP_LIB_FLAG = --class-path $(OJ_JAR):$(ETOC_JAR):$(JUNIT_JAR)
TEST_CLASS = NextDate

all: compile run_1

compile:
	javac -d ./out -sourcepath ./src $(CP_LIB_FLAG) ./src/app/Main.java ./src/app/GenerateFiles.java

run_1:
	java $(CP_LIB_FLAG):./out app.GenerateFiles $(TEST_CLASS)

run_2:
	java $(CP_LIB_FLAG):./out app.Main $(TEST_CLASS)

clean:
	rm -rf out/* $(TEST_CLASS).path $(TEST_CLASS).sign $(TEST_CLASS).tgt
