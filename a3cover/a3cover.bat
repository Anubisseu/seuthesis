pdflatex -interaction=nonstopmode bookspine_hor.tex
pdflatex -interaction=nonstopmode bookspine_ver.tex
./pdfcrop.pl --margins 2 --clip bookspine_ver.pdf bookspine_res.pdf
pdflatex -interaction=nonstopmode A3cover.tex

del *.aux *.log

del bookspine_hor.pdf
del bookspine_ver.pdf
