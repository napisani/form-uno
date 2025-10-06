# Makefile for formuno3 keyboard

.PHONY: build flash

build:
	cp ./src/firmware/formuno/keymaps/default/keymap.c ~/qmk_firmware/keyboards/formuno3/keymaps/default/keymap.c 
	qmk compile -kb formuno3 -km default

flash:
	qmk flash -kb formuno3 -km default
