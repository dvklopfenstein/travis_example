REPO := goatools

vim_:
	vim -p \
	src/tests/test_pkg.py \
	src/travis_example/pkga.py

update: .travis.yml

setup:
	python setup.py install

.travis.yml: ../$(REPO)/.travis.yml
	ls -rtl $<
	cp -f $< $@

test_travis_subset:
	py.test src/tests

clean:
	rm -rf build

clobber:
	make clean
	rm -f .travis.yml

