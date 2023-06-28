#!/bin/bash
KEYMAP_FILE=splitkb_aurora_sweep.keymap
IMG_DIR=img
LAYOUT=cradio

# generate single image with each individual layers
zmk-viewer generate --output ${IMG_DIR} --file ${KEYMAP_FILE} ${LAYOUT} --single
mv ${IMG_DIR}/${LAYOUT}.png ${IMG_DIR}/${LAYOUT}-single.png

# generate single image with unified layers
zmk-viewer generate --output ${IMG_DIR} --file ${KEYMAP_FILE} ${LAYOUT} --unified
mv ${IMG_DIR}/${LAYOUT}.png ${IMG_DIR}/${LAYOUT}-unified.png

# generate independent images for each layer
zmk-viewer generate --output ${IMG_DIR} --file ${KEYMAP_FILE} ${LAYOUT} 

