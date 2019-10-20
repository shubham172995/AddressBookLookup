

venv/bin/activate: requirements-to-freeze.txt
	test -f venv/bin/activate || python -m virtualenv venv
	. venv/bin/activate ;\
	pip install -Ur requirements-to-freeze.txt ;\
	pip freeze | sort > requirements.txt
	touch venv/bin/activate  # update so it's as new as requirements-to-freeze.txt

.PHONY: run
run: venv/bin/activate
	. venv/bin/activate ; \
	python3 AddressBookLookUp.py