
build: components index.js buttons.css
	@component build --dev

components: component.json
	@component install --dev

buttons.css: buttons.less variables.less \
		mixins.less close.less button-groups.less
	@lessc buttons.less >buttons.css

clean:
	rm -fr build components buttons.css

test: build
	# open test/index.html in your browser

.PHONY: clean test
