SPHINX_AUTO_EXTRA:=

docs:
	@${EXEC} sphinx-autobuild -b html docs docs/build/htm ${SPHINX_AUTO_EXTRA}