install:
	pip install --upgrade pip &&\
	pip install -r requirements.txt

test:
	python -m pytest --nbval data-science-notebook.ipynb

format:
	black *.py

lint:
	pylint --disable=R,C data-science-notebook.ipynb

all: install lint test