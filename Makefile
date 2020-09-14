File_list =  Index firstnew_v32 firstold_v32 證明X有沒有縮放都一樣 分析y2_v1 Analysis_y1to6 seex second_v5
outdir = report/
#HTML_FILES = $(outdir)Index.html
HTML_FILES:=$(foreach n,$(File_list),$(outdir)$(n).html)

# $(outdir)Index.html
all :  $(HTML_FILES)
	echo All files are now up to date

clean :
	rm -f $(HTML_FILES)
$(outdir)Index.html: Index.Rmd
	Rscript -e 'rmarkdown::render_site("Index.Rmd")'
$(outdir)%.html : %.Rmd
	Rscript -e 'rmarkdown::render("$<", encoding="UTF-8", envir=new.env(),output_dir = "report")'

