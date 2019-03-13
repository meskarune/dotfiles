" [onedark.vim](https://github.com/joshdick/onedark.vim/)

" This is a [vim-airline](https://github.com/vim-airline/vim-airline) theme for use with
" the [onedark.vim](https://github.com/joshdick/onedark.vim) colorscheme.

" It is based on vim-airline's ["tomorrow" theme](https://github.com/vim-airline/vim-airline-themes/blob/master/autoload/airline/themes/tomorrow.vim).
function! airline#themes#meskarune#refresh()

  if get(g:, 'meskarune_termcolors', 256) == 16
    let s:term_red = 1
    let s:term_green = 2
    let s:term_yellow = 3
    let s:term_blue = 6
    let s:term_purple = 5
    let s:term_white = 7
    let s:term_black = 0
    let s:term_grey = 8
  else
    let s:term_red = 167
    let s:term_green = 77
    let s:term_yellow = 221
    let s:term_blue = 69
    let s:term_purple = 105
    let s:term_white = 251
    let s:term_black = 234
    let s:term_grey = 237
  endif

  let g:airline#themes#meskarune#palette = {}

  let g:airline#themes#meskarune#palette.accents = {
        \ 'red': [ '#CD2320', '', s:term_red, 0 ]
        \ }

  let s:N1 = [ '#1C1C1C', '#8197bf', s:term_black, s:term_blue ]
  let s:N2 = [ '#ADADAD', '#3B3B3B', s:term_white, s:term_grey ]
  let s:N3 = [ '#8197bf', '#1C1C1C', s:term_blue, s:term_black ]
  let g:airline#themes#meskarune#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)

  let group = airline#themes#get_highlight('vimCommand')
  let g:airline#themes#meskarune#palette.normal_modified = {
        \ 'airline_c': [ group[0], '', group[2], '', '' ]
        \ }

  let s:I1 = [ '#1C1C1C', '#72A25A', s:term_black, s:term_green ]
  let s:I2 = s:N2
  let s:I3 = [ '#72A25A', '#1C1C1C', s:term_green, s:term_black ]
  let g:airline#themes#meskarune#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
  let g:airline#themes#meskarune#palette.insert_modified = g:airline#themes#meskarune#palette.normal_modified

  let s:R1 = [ '#1C1C1C', '#D75F5F', s:term_black, s:term_red ]
  let s:R2 = s:N2
  let s:R3 = [ '#D75F5F', '#1C1C1C', s:term_red, s:term_black ]
  let g:airline#themes#meskarune#palette.replace = airline#themes#generate_color_map(s:R1, s:R2, s:R3)
  let g:airline#themes#meskarune#palette.replace_modified = g:airline#themes#meskarune#palette.normal_modified

  let s:V1 = [ '#1C1C1C', '#D8AD4C', s:term_black, s:term_yellow ]
  let s:V2 = s:N2
  let s:V3 = [ '#D8AD4C', '#1C1C1C', s:term_yellow, s:term_black ]
  let g:airline#themes#meskarune#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
  let g:airline#themes#meskarune#palette.visual_modified = g:airline#themes#meskarune#palette.normal_modified

  let s:IA1 = [ '#ADADAD', '#3B3B3B', s:term_white, s:term_grey ]
  let s:IA2 = [ '#ADADAD', '#1C1C1C', s:term_white, s:term_black ]
  let s:IA3 = s:IA2
  let g:airline#themes#meskarune#palette.inactive = airline#themes#generate_color_map(s:IA1, s:IA2, s:IA3)
  let g:airline#themes#meskarune#palette.inactive_modified = {
        \ 'airline_c': [ group[0], '', group[2], '', '' ]
        \ }


  " Warnings
  let s:WI = [ '#1C1C1C', '#D8AD4C', s:term_black, s:term_yellow ]
  let g:airline#themes#meskarune#palette.normal.airline_warning = [
       \ s:WI[0], s:WI[1], s:WI[2], s:WI[3]
       \ ]

  let g:airline#themes#meskarune#palette.normal_modified.airline_warning =
      \ g:airline#themes#meskarune#palette.normal.airline_warning

  let g:airline#themes#meskarune#palette.insert.airline_warning =
      \ g:airline#themes#meskarune#palette.normal.airline_warning

  let g:airline#themes#meskarune#palette.insert_modified.airline_warning =
      \ g:airline#themes#meskarune#palette.normal.airline_warning

  let g:airline#themes#meskarune#palette.visual.airline_warning =
      \ g:airline#themes#meskarune#palette.normal.airline_warning

  let g:airline#themes#meskarune#palette.visual_modified.airline_warning =
      \ g:airline#themes#meskarune#palette.normal.airline_warning

  let g:airline#themes#meskarune#palette.replace.airline_warning =
      \ g:airline#themes#meskarune#palette.normal.airline_warning

  let g:airline#themes#meskarune#palette.replace_modified.airline_warning =
      \ g:airline#themes#meskarune#palette.normal.airline_warning

  " Errors
  let s:ER = [ '#1C1C1C', '#CD2320', s:term_black, s:term_red ]
  let g:airline#themes#meskarune#palette.normal.airline_error = [
       \ s:ER[0], s:ER[1], s:ER[2], s:ER[3]
       \ ]

  let g:airline#themes#meskarune#palette.normal_modified.airline_error =
      \ g:airline#themes#meskarune#palette.normal.airline_error

  let g:airline#themes#meskarune#palette.insert.airline_error =
      \ g:airline#themes#meskarune#palette.normal.airline_error

  let g:airline#themes#meskarune#palette.insert_modified.airline_error =
      \ g:airline#themes#meskarune#palette.normal.airline_error

  let g:airline#themes#meskarune#palette.visual.airline_error =
      \ g:airline#themes#meskarune#palette.normal.airline_error

  let g:airline#themes#meskarune#palette.visual_modified.airline_error =
      \ g:airline#themes#meskarune#palette.normal.airline_error

  let g:airline#themes#meskarune#palette.replace.airline_error =
      \ g:airline#themes#meskarune#palette.normal.airline_error

  let g:airline#themes#meskarune#palette.replace_modified.airline_error =
      \ g:airline#themes#meskarune#palette.normal.airline_error

endfunction

call airline#themes#meskarune#refresh()
