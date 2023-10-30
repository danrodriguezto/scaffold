install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt   # Do a upgrade of pip and install requirements
		
format:
	black *.py
	
lint:
	pylint --disable=R,C hello.py    # Disable some warnings of pylint
	
test:
	python -m pytest -vv --cov=hello test_hello.py   # Use the third-party library pytest to test