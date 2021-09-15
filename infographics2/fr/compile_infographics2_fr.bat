@ECHO OFF

pdflatex main.tex

del *.aux *.log *.out main.synctex.gz

magick -density 192 "main.pdf" -resize 826 -depth 8 -quality 96 infographics2_fr.png
move /Y ./"infographics2_fr.png" ../../docs/media/