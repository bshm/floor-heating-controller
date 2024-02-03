ESPHOME_RELEASE := 2023.12

.PHONY: all
all:
	docker run --rm -v "${PWD}":/config -it ghcr.io/esphome/esphome:$(ESPHOME_RELEASE) compile eg.yaml
	docker run --rm -v "${PWD}":/config -it ghcr.io/esphome/esphome:$(ESPHOME_RELEASE) compile og.yaml

.PHONY: clean
clean:
	docker run --rm -v "${PWD}":/config -it ghcr.io/esphome/esphome:$(ESPHOME_RELEASE) clean eg.yaml
	docker run --rm -v "${PWD}":/config -it ghcr.io/esphome/esphome:$(ESPHOME_RELEASE) clean og.yaml
