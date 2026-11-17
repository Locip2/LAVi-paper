# Shared defaults for terminal builds and LaTeX Workshop.
@default_files = ('main.tex');
$pdf_mode = 1;
$out_dir = 'build';
$pdflatex = 'pdflatex -synctex=1 -interaction=nonstopmode -halt-on-error -file-line-error %O %S';
