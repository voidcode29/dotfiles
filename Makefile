.PHONY: install restow delete check

install:
	./install.sh

restow:
	stow -R -t ~ */

delete:
	stow -D -t ~ */

check:
	git status