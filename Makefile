build-script=build.go

bootstrap: deps
	@echo "[x] Generating build script from $(build-script)."
	go build $(build-script)
	@echo "[x] Running build script (See $(build-script) for details)."
	./build

deps:
	@echo "[x] Make sure you have JetBrains MPS installed, version 3.1."
	@echo "[x] Determining if system has other necessary tools..."
	@type go 1>/dev/null && echo " * Go language is ready" || { echo " [ERROR] Go language not found. Please install Go and ensure the 'go' binary is on your PATH.";  exit 1; }

clean:
	@echo "[x] Removing JAR files..."
	-rm languages/lib/*.jar
