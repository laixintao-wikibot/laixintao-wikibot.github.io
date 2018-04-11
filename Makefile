publish:
	git add -A
	git commit -m "Auto commit at $(date)"
	vim +VimwikiIndex +VimwikiAll2HTML +qa
	git add -A
	git commit -m "Compile to html at $(date)"
	git pull --rebase
	git push
