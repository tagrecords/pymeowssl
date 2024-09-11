.PHONY: install

all: wheel

wheel:
	rm -rf dist
	python -m build --no-isolation --wheel

install: wheel
	pip uninstall -y pyopenssl
	pip install dist/*.whl
