clean: 
	rm static/tictactoe.js
	rm static/tictactoe.wasm
	rm static/index.html
	rm static/style.css

build-wasm:
	cd tictactoe && cargo web build --release
	cp tictactoe/target/wasm32-unknown-unknown/release/tictactoe.js static/
	cp tictactoe/target/wasm32-unknown-unknown/release/tictactoe.wasm static/
	cp tictactoe/static/index.html static/
	cp tictactoe/static/style.css static/

run: build-wasm
	cargo run --release
