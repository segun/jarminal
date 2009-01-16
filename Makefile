NAME=jarminal
VERSION=0.1

all: build
	@echo "All Done"

deploy: clean build
	@cp build/* ~/bin/

build:
	@mkdir -p build
	@cp src/* build/

clean:
	@rm -rf build		
