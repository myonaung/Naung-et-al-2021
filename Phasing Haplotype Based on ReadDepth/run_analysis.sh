module load R/3.5.2
module load pandoc
R -e "rmarkdown::render('filepath/pf3k_antigen.Rmd', output_file='path/example_antigen.html')"
