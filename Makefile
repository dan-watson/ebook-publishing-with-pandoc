build:
	rm -rf dist/** && \
	pandoc -o dist/book.epub \
		meta/title.txt \
		chapters/chapter-1.md \
		chapters/chapter-2.md \
		--toc \
		--toc-depth=1 \
		--epub-cover-image=images/eBook.jpg \
		--css=styles/style.css && \
		bin/kindlegen dist/book.epub
kindle:
	bin/kindlegen dist/book.epub
