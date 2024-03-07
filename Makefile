METAJSON = $(RECIPE_DIR)/meta.json
TARGETS  = meta

export RECIPE_DIR := $(shell cd ./recipe && pwd)

.PHONY: $(TARGETS)

all:
	$(error Valid targets are: $(TARGETS))

meta: $(METAJSON)

$(METAJSON): $(addprefix $(RECIPE_DIR)/,meta.yaml)
	condev-meta
