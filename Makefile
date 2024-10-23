BIN_OUTPUT_PATH = bin
TOOL_BIN = bin/gotools/$(shell uname -s)-$(shell uname -m)

module: build-$(DOCKER_ARCH)
	rm -f $(BIN_OUTPUT_PATH)/maxim-ds18b20-module.tar.gz
	cp $(BIN_OUTPUT_PATH)/ds18b20-$(DOCKER_ARCH) $(BIN_OUTPUT_PATH)/ds18b20
	tar czf $(BIN_OUTPUT_PATH)/maxim-ds18b20-module.tar.gz .

build-$(DOCKER_ARCH):
	go build -o $(BIN_OUTPUT_PATH)/ds18b20-$(DOCKER_ARCH) main.go
