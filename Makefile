COMPOSER := $(shell if [ `which composer` ]; then echo 'composer'; else curl -sS https://getcomposer.org/installer | php > /dev/null 2>&1 ; echo './composer.phar'; fi;)

install:
	git clone https://github.com/Metaphysik/maestria-web
	git clone https://github.com/Metaphysik/maestria-api
	make install-web
	make install-api

install-web:
	cd maestria-web
	make install

install-api:
	cd maestria-api
	$(COMPOSER) install --no-dev



