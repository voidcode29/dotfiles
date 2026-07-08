install:
	./install.sh

restow:
	stow -R */

delete:
	stow -D */

check:
	git status