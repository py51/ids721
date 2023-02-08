install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

format:
	black *.py
	
lint:
	pylint --disable=R,C,W0511 app.py

test:
	python -m pytest -vv --cov=hello test.py

all: install lint test