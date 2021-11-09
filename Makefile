SPHINX_AUTO_EXTRA:=

pre-commit:
	@${EXEC} pre-commit run 
docs:
	@${EXEC} sphinx-autobuild -b html docs docs/build/html ${SPHINX_AUTO_EXTRA}