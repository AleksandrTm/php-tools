#!/bin/bash

function rector() {
  cd /tools/app && ~/.composer/vendor/bin/rector process --dry-run
}

function rector_fix() {
  cd /tools/app && ~/.composer/vendor/bin/rector
}

function rector_init() {
  cd /tools/app && ~/.composer/vendor/bin/rector init
}

function phpcs() {
  cd /tools/app && ~/.composer/vendor/bin/phpcs .
}

function phpcbf() {
  cd /tools/app && ~/.composer/vendor/bin/phpcbf .
}

function psalm_init() {
  cd /tools/app && ~/.composer/vendor/bin/psalm --init
}

function psalm() {
  cd /tools/app && ~/.composer/vendor/bin/psalm
}

case "$1" in
  rector)
    rector
    ;;
  rector-fix)
    rector_fix
    ;;
  rector-init)
    rector_init
    ;;
  phpcs)
    phpcs
    ;;
  phpcbf)
    phpcbf
    ;;
  psalm-init)
    psalm_init
    ;;
  psalm)
    psalm
    ;;
  *)
    echo "Usage: $0 {rector|rector-fix|phpcs|phpcbf|psalm-init|psalm}"
    exit 1
esac
