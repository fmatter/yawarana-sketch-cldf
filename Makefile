default:
	python3 compile_cldf.py
	cldf validate cldf/metadata.json

all:
	make default
	make doc
	make readme

doc:
	cp /home/florianm/Dropbox/research/cariban/yawarana/yaw_sketch/output/latex/main.pdf ./yawarana-sketch.pdf

readme:
	python3 create_readme.py