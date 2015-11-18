#!/bin/sh

dvips -G0 -t letter -Ppdf $1.dvi -o $1.ps
#ps2pdf14 $1.ps $1.pdf
gs -dSAFER -dNOPAUSE -dBATCH -sDEVICE=pdfwrite -sPAPERSIZE=a4 -dPDFSETTINGS=/printer \
-dCompatibilityLevel=1.3 -dMaxSubsetPct=100 -dSubsetFonts=true -dEmbedAllFonts=true \
-sOutputFile=$1.pdf $1.ps
rm -rf $1.ps
clear
