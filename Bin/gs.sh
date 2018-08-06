#!/bin/sh

input=$1
output=$2

gs  \
	-dBATCH \
	-dNOPAUSE \
	-sDEVICE=pdfwrite \
	-sOutputFile="${output}" \
	"${input}"