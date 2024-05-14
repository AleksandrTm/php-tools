phpcs:
	@docker run --rm -v .:/tools/app -u 1000 ghcr.io/aleksandrtm/php-tools phpcs
phpcbf:
	@docker run --rm -v .:/tools/app -u 1000 ghcr.io/aleksandrtm/php-tools phpcbf

rector:
	@docker run --rm -v .:/tools/app -u 1000 ghcr.io/aleksandrtm/php-tools rector
rector-fix:
	@docker run --rm -v .:/tools/app -u 1000 ghcr.io/aleksandrtm/php-tools rector-fix

psalm-init:
	@docker run --rm -v .:/tools/app -u 1000 ghcr.io/aleksandrtm/php-tools psalm-init
psalm:
	@docker run --rm -v .:/tools/app -u 1000 ghcr.io/aleksandrtm/php-tools psalm

build:
	@docker build --no-cache -t php-tools:latest .
