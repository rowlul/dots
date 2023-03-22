all:
	stow --verbose --target=$$HOME --restow */

%:
	stow --verbose --target=$$HOME --restow $@/

replace:
	stow --verbose --target=$$HOME --adopt */

delete:
	stow --verbose --target=$$HOME --delete */
