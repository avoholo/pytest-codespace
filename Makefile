install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

test:
	python -m pytest -vvv --cov=hello --cov=greeting \

format:
	black *.py

lint:
	pylint --disable=R,C *.py

all: install lint test format