SRC = $(wildcard src/*.js)
LIB = $(SRC:src/%.js=lib/%.js)

export PATH := node_modules/.bin:$(PATH)

lib: $(LIB)
lib/%.js: src/%.js
	mkdir -p $(@D)
	babel $< -o $@

clean:
	rm -f lib/*.js
