SPHINX_AUTO_EXTRA:=

doc:
	@${EXEC} sphinx-autobuild -b html docs docs/build/htm ${SPHINX_AUTO_EXTRA}