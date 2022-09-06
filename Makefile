install:
	composer install

validate:
	composer validate

lint:
	composer exec --verbose phpcs -- --standard=PSR12 src bin tests

test:
	composer exec --verbose phpunit tests

test-coverage:
	composer exec --verbose XDEBUG_MODE=coverage phpunit tests -- --coverage-clover build/logs/clover.xml