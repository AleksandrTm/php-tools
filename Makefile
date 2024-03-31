phpcs:
	@docker run --rm -v .:/tools/app -u 1000 ghcr.io/aleksandrtm/php-tools phpcs
phpcbf:
	@docker run --rm -v .:/tools/app -u 1000 ghcr.io/aleksandrtm/php-tools phpcbf

rector-init:
	@docker run --rm -v .:/tools/app -u 1000 ghcr.io/aleksandrtm/php-tools rector-init
rector:
	@docker run --rm -v .:/tools/app -u 1000 ghcr.io/aleksandrtm/php-tools rector
rector-fix:
	@docker run --rm -v .:/tools/app -u 1000 ghcr.io/aleksandrtm/php-tools rector-fix

psalm-init:
	@docker run --rm -v .:/tools/app -u 1000 ghcr.io/aleksandrtm/php-tools psalm-init
psalm:
	@docker run --rm -v .:/tools/app -u 1000 ghcr.io/aleksandrtm/php-tools psalm
