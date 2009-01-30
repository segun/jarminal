NAME=jarminal
VERSION=0.1

all: build
	@echo "All Done"

build:
	@mkdir -p build/usr/bin
	@mkdir -p build/etc
	@cp bin/* build/usr/bin/
	@cp src/* build/usr/bin/
	@cp conf/* build/etc

clean:
	@rm -rf build		

install:
	./install.sh $(DESTDIR)

deploy:
	@mkdir -p $(NAME)-$(VERSION)
	@cp Makefile $(NAME).spec install.sh $(NAME)-$(VERSION)/
	@cp -r build $(NAME)-$(VERSION)
	@tar -cvf $(NAME)-$(VERSION).tar.gz $(NAME)-$(VERSION)/*
	@rm -rf $(NAME)-$(VERSION)

rpm: deploy
	@rm -rf /usr/src/redhat/SOURCES/$(NAME)*
	@rm -rf /usr/src/redhat/RPMS/i386/$(NAME)*
	@mv $(NAME)-${VERSION}.tar.gz /usr/src/redhat/SOURCES/
	@cp $(NAME).spec /usr/src/redhat/SPECS/
	@rpmbuild -bb /usr/src/redhat/SPECS/$(NAME).spec
	@mv /usr/src/redhat/RPMS/i386/$(NAME)*.rpm .
