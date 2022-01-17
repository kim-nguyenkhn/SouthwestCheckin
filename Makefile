all: init test lint
init:
	pip install -r requirements.txt

test:
	pytest --cov=southwest/ --cov=checkin

lint:
	pycodestyle */*.py --show-source --ignore=E501

docker:
	docker build -t kim-nguyenkhn/southwestcheckin .

release:
	docker push kim-nguyenkhn/southwestcheckin

.PHONY: all
