#!/bin/sh

gs 	\
	-dPDFA \
	-dBATCH \
	-dNOPAUSE \
	-sProcessColorModel=DeviceCMYK  \
	-sDEVICE=pdfwrite  \
	-sPDFACompatibilityPolicy=1  \
	-sOutputFile=output.pdf  \
	input.pdf