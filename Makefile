# install:
# 	pip install --upgrade pip &&\
# 		pip install -r requirements.txt

# format:
# 	black *.py
	
# lint:
# 	pylint --disable=R,C,W0511 app.py

# test:
# 	python -m pytest -vv --cov=hello test.py

# all: install lint test
install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

test:
	python -m pytest -vv test.py

format:
	black *.py

run:
	python app.py

run-uvicorn:
	uvicorn app:app --reload

killweb:
	sudo killall uvicorn

lint:
	pylint --disable=R,C app.py

all: install lint