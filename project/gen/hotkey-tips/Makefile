
default: help
.PHONY: default

help:
	@echo 'Usage:'
	@echo '	$$ make [action]'
	@echo
	@echo 'Ex:'
	@echo '	$$ make'
	@echo '	$$ make help'
	@echo
	@echo '	$$ make all'
	@echo
	@echo '	$$ make gen-sh'
	@echo '	$$ make gen-md'
	@echo '	$$ make gen-tsv'
	@echo
.PHONY: help




all: gen-sh gen-md gen-tsv
.PHONY: all


gen-sh:
	./gen-sh.php
.PHONY: gen-sh


gen-md:
	./gen-md.php
.PHONY: gen-md


gen-tsv:
	./gen-tsv.php
.PHONY: gen-tsv




sync: all
	cp -rfT tmp/locale dist/locale
.PHONY: sync




archlinux-prepare:
	sudo pacman -Sy --needed php
.PHONY: archlinux-prepare


debian-prepare:
	sudo apt-get install php-cli
.PHONY: debian-prepare


fedora-prepare:
	sudo dnf install php-cli
.PHONY: fedora-prepare
