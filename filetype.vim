if exists("did_load_filetypes")
  finish
endif

" Language: UPC
augroup filetypedetect
  au! BufRead,BufNewFile *.upc   setfiletype upc
augroup END
