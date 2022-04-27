package:
	python scripts/package.py
	pip install -e .

pypi: package
	python setup.py sdist bdist_wheel upload

publish: package pypi


format: prettier nixpkgs-fmt

prettier:
	prettier --write .

nixpkgs-fmt:
	nixpkgs-fmt .
