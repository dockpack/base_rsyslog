# make a local environment and use molecule test

../base: clean
	python3 -m venv ../base
#	(source ../base/bin/activate && python3 -m pip install --upgrade pip)
	(source ../base/bin/activate && pip3 install -r requirements.txt)
	(source ../base/bin/activate && molecule test)

clean:
	rm -rf ../base
