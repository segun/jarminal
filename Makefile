NAME=jarminal
VERSION=0.1

all: build
	@echo "All Done"

deploy: clean build
	@cp build/* ~/bin/

build:
	@mkdir -p build
	@cp bin/* build/
	@cc -o build/jarminal_read src/readline.c

clean:
	@rm -rf build		
