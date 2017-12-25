REPO := goatools

update: .travis.yml

.travis.yml: ../$(REPO)/.travis.yml
	ls -rtl $<
	cp -f $< $@

test_travis_subset:
	py.test src/tests

clobber:
	rm -f .travis.yml

