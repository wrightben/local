#!/bin/sh

gs  \
	-dBATCH \
	-dNOPAUSE \
	-sDEVICE=pdfwrite \
	-sOutputFile="output.pdf" \
	"input.pdf"