" Use two-spaces for indentation
setlocal expandtab
setlocal softtabstop=2
setlocal shiftwidth=2
setlocal commentstring=#%s

setlocal formatoptions=crl
" r -> don't add comment leader after an Enter
" l -> do not wrap long lines

augroup utfjinja
  autocmd!
  highlight red_highlight ctermbg=red guibg=red

	" Visual warning about UTF8 characters
  match red_highlight /[\x7F-\xFF]/
  autocmd BufWinEnter <buffer> match red_highlight /[\x7F-\xFF]/
  autocmd InsertEnter <buffer> match red_highlight /[\x7F-\xFF]/
  autocmd InsertLeave <buffer> match red_highlight /[\x7F-\xFF]/
  autocmd BufWinLeave <buffer> call clearmatches()

	" Visual warning about trailing whitespace
	match red_highlight /\s\+$/
  autocmd BufWinEnter <buffer> match red_highlight /\s\+$/
  autocmd InsertEnter <buffer> match red_highlight /\s\+$/
  autocmd InsertLeave <buffer> match red_highlight /\s\+$/
  autocmd BufWinLeave <buffer> call clearmatches()
augroup END
