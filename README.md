# PHP-TOOLS

[![Static Badge](https://img.shields.io/badge/PHP_TOOLS-1.5%20(latest)-brightgreen?style=for-the-badge)](https://github.com/aleksandrtm/php-tools/pkgs/container/php-tools)

Набор инструментов для анализа PHP кода

- PHP_CodeSniffer version 3.11.3
- Rector 1.0.5
- Psalm 5.24.0

---

### Использование

```bash
docker pull ghcr.io/aleksandrtm/php-tools
```

Примеры команд для запуска в Makefile

---

Сборка запускается под php 8.4.2-cli-alpine + JIT  
использовать можно под проекты с любыми версиями php

**phpcs**: `<config name="php_version" value="50403"/>` // 50403 -> 5.4.3 | 70404 -> 7.4.4    
**rector**: требуется указать `withPhpSets()` использует версию php из composer.json