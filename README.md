### php-tools
Набор инструментов для анализа PHP кода

- Rector
- Psalm
- CodeSniffer

---

Сборка запускается под php 8.3.4-cli + JIT  
использовать можно под проекты с любыми версиями php

**phpcs**: `<config name="php_version" value="50403"/>` // 50403 -> 5.4.4 | 70404 -> 7.4.4    
**rector**: требуется указать `withPhpSets()` использует версию php из composer.json