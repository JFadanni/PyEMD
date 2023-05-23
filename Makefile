
test:
	python -m PyEMD.tests.test_all

clean:
	find PyEMD -name __pycache__ -execdir rm -r {} +

doc:
	cd doc && make html

format:
	black PyEMD

lint-check:
	python -m isort --check PyEMD
	python -m black --check PyEMD
