set nocompatible
set nowrap
set bs=2

set encoding=utf-8
set fileencoding=utf-8

filetype plugin on
syntax on
set colorcolumn=80 " add red line at 80 column for code formatting

set nobackup
set nowritebackup
set noswapfile
set viminfo="NONE"

" tabs
set tabstop=4
set shiftwidth=4
set expandtab

set hlsearch

""""""""""""""""""""""""""""""""
" GUI
""""""""""""""""""""""""""""""""

if has("gui_running")
    colorscheme Sunburst_myComment
"    colorscheme swtf3

    if has("gui_gtk") || has('gui_gtk2') || has("gui_gtk3")
"        set guifont=Droid\ Sans\ Mono\ for\ Powerline\ Bold\ 7 " set font
        set guifont=Roboto\ Mono\ for\ Powerline\ Regular\ 7 " set font
"        set guifont=Meslo\ LG\ S\ for\ Powerline\ 7
"        set lines=999 columns=999 " start gvim maximized
    elseif has("gui_macvim")
        set guifont=Menlo\ Regular:h8
    elseif has("gui_win32")
"        set guifont=courier_new:h10:cRUSSIAN
        set guifont=Lucida_Console:h8:cDEFAULT
        au GUIEnter * simalt ~n
    endif
else
    colorscheme darkblue
endif

set guioptions-=m " remove menu bar
set guioptions-=T " remove toolbar
set guioptions-=L " remove scrollbar

""""""""""""""""""""""""""""""""
" Functions
""""""""""""""""""""""""""""""""

" Find file in current directory and edit it.
function! Find(name)
  let l:list=system("find . -name '".a:name."' | perl -ne 'print \"$.\\t$_\"'")
" replace above line with below one for gvim on windows
" let l:list=system("find . -name ".a:name." | perl -ne \"print qq{$.\\t$_}\"")
  let l:num=strlen(substitute(l:list, "[^\n]", "", "g"))
  if l:num < 1
    echo "'".a:name."' not found"
    return
  endif
  if l:num != 1
    echo l:list
    let l:input=input("Which ? (CR=nothing)\n")
    if strlen(l:input)==0
      return
    endif
    if strlen(substitute(l:input, "[0-9]", "", "g"))>0
      echo "Not a number"
      return
    endif
    if l:input<1 || l:input>l:num
      echo "Out of range"
      return
    endif
    let l:line=matchstr("\n".l:list, "\n".l:input."\t[^\n]*")
  else
    let l:line=l:list
  endif
  let l:line=substitute(l:line, "^[^\t]*\t./", "", "")
  execute ":e ".l:line
  execute ":NERDTreeFind"
  call feedkeys("\<C-w>\<right>")
endfunction
command! -nargs=1 Find :call Find("<args>")

""""""""""""""""""""""""""""""""
" Plugins
""""""""""""""""""""""""""""""""

"
" Pathogen
"
"execute pathogen#infect()

"
" NERDTree
"
nmap <F11> :NERDTreeToggle<CR>
nmap <F9> :NERDTreeFind<CR>

" How can I open a NERDTree automatically when vim starts up if no files were specified?
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" How can I close vim if the only window left open is a NERDTree?
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

"
" Airline
"
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline_theme='base16_3024'
