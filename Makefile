publish: html
	git add -A
	git commit -m "Auto Compile to html and commit."
	git pull --rebase
	git push

clean:
	rm -rf html

html: clean
	mkdir html
	cp -r assets html/assets
	vim -m +VimwikiIndex +VimwikiAll2HTML +qa
