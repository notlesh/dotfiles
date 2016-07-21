" pathogen
call pathogen#infect()

:com W write
:set t_Co=256
:syntax on
:filetype on
:set si
let java_allow_cpp_keywords=1
:set autoindent
:set autowrite
:set modeline
:set modelines=5
:set so=7

" DETECT FILE CHANGED, DAMMIT
:au CursorHold * checktime " check file timestamp after inactivity for a while
:au CursorHoldI * checktime " check file timestamp after inactivity for a while
:au CursorMoved * checktime " check file timestamp after moving
:au CursorMovedI * checktime " check file timestamp after moving
:au InsertEnter * checktime " check file timestamp after entering insert mode
:au FocusGained * checktime " check file timestamp after gaining focus (usually doesn't work)
:au WinEnter * checktime " check file timestamp after entering insert mode

" line numbers
" :set number
:highlight LineNr ctermfg=238 ctermbg=234
:nmap <C-N> :set numberwidth=4<CR>:set number!<CR>
:nmap <C-M> :set numberwidth=2<CR>:set rnu!<CR>
" :set numberwidth=4
:set cpoptions+=n
" hilight current line
" :set cursorline
" :set cursorcolumn
:highlight clear CursorLine
:highlight CursorLine ctermbg=234
:highlight CursorColumn ctermbg=234

" conflicts with tab commands below
" :nmap <C-T> :set cursorline<CR>:set cursorcolumn<CR>:sleep 250m<CR>:set nocursorline<CR>:set nocursorcolumn<CR>

" use doxygen syntax highlighting for cpp
:autocmd FileType c,cpp,h,hpp set syntax=cpp.doxygen

" auto qmake/qml filetype
:autocmd BufRead,BufNewFile *.qml set ft=qml
:autocmd BufRead,BufNewFile *.pro,*.pri set ft=qmake

" tabs -- hard tabs unless NETSCOUT
function! SetupTabs()
	let l:path = expand('%:p')
	if l:path =~ '/home/stephen/snackers'
		setlocal expandtab
		setlocal softtabstop=4 tabstop=4 shiftwidth=4
	else
		setlocal noexpandtab
		setlocal softtabstop=4 tabstop=4 shiftwidth=4
	endif
endfunction
autocmd! BufReadPost,BufNewFile * call SetupTabs()

:set textwidth=0

" :autocmd FileType xhtml,htm,html,xml,xml2,ant set softtabstop=1 shiftwidth=1 tabstop=1
" :autocmd FileType java,c,cpp,h,hpp set softtabstop=4 shiftwidth=4 tabstop=4
" :autocmd FileType java set makeprg=ant
" :autocmd FileType java set efm=\ %#[javac]\ %#%f:%l:%c:%*\\d:%*\\d:\ %t%[%^:]%#:%m,\%A\ %#[javac]\ %f:%l:\ %m,%-Z\ %#[javac]\ %p^,%-C%.%#

:hi Visual ctermbg=17

:set hlsearch
:set incsearch
:set smartcase
:set ignorecase
vnoremap  :s/^/\/\//<cr>
vnoremap  :s/^\/\///<cr>
:map ^[[[C :a^M
:map <F5> :set paste!<cr>
:map <F6> :set spell!<cr>
:map <F7> :set hlsearch!<cr>
:map <F8> :set wrap!<cr>
:map <F9> :set background=dark<cr>
:map <F10> :set background=light<cr>

:set history=100

:set smartcase
:set title

:set mouse=nv

" dvorak key remappings
:no d h
:no D H
:no h j
:no H J
:no t k
:no T K
:no n l
:no N L
:no l n
:no L N
:no k d
:no K D

:no d h
:no h j
:no t k
:no n l

" :noremap <Ctrl-W>W <Ctrl-W>N

" Only do this part when compiled with support for autocommands
" if has("autocmd")
  " When editing a file, always jump to the last cursor position
  " autocmd BufReadPost *
  " \ if line("'\"") > 0 && line ("'\"") <= line("$") |
  " \   exe "normal! g'\"" |
  " \ endif
" endif

:hi MatchParen ctermbg=brown
:hi Pmenu ctermbg=black ctermfg=white
:hi PmenuSel ctermbg=black ctermfg=red

:highlight clear SpellBad
:highlight SpellBad term=standout ctermfg=1 term=underline cterm=underline

:hi clear SpellCap
:hi SpellCap term=standout ctermfg=lightgreen term=underline cterm=underline
:hi clear Search
:hi Search term=standout ctermfg=yellow term=underline cterm=underline
:hi clear IncSearch
:hi IncSearch term=standout ctermfg=yellow term=underline cterm=underline

" Java shit
let java_allow_cpp_keywords=1
let java_highlight_all=1
let java_minlines=50
:hi javaNumber ctermfg=198
:hi javaC_JavaLang ctermfg=227
:hi javaR_JavaLang ctermfg=227
:hi javaLangObject ctermfg=252

" change spaces to tabs -- assumes each 4 spaces were intended to be tabs
function FixTabs()
	:%s/\t/        /g
	:%s/    /\t/g
endfunction
:map <F12> :call FixTabs()<cr><cr>

function SetTabWidth(w)
	let width=a:w
	set shiftwidth=$width
	set tabstop=$width
	set softtabstop=$width
endfunction

" NERDTree
:map <C-k> :NERDTreeMirrorToggle<CR>

" window related
:hi StatusLineNC ctermfg=234 ctermbg=246
:hi StatusLine ctermfg=236 ctermbg=226

" change cursor based on mode
if &term =~ "xterm\\|rxvt"
  silent !echo -ne "\033]12;red\007"
  let &t_SI = "\033]12;orange\007"
  let &t_EI = "\033]12;red\007"
  autocmd VimLeave * :!echo -ne "\033]12;red\007"
endif

" javabrowser
au VimEnter * let JavaBrowser_Ctags_Cmd="/usr/bin/ctags"
au VimEnter * let Javabrowser_Use_Icon=1

" vjde
if has("autocmd")
  autocmd Filetype java let g:vjde_lib_path='/home/stephen/nuvos/nuvos.jar:/home/stephen/thinktank/client/thinktank-client.jar:/home/stephen/thinktank/common/thinktank-common.jar:/home/stephen/thinktank/common/thinktank-ui.jar'
endif

" sql stfu
let g:omni_sql_no_default_maps = 1

" xml folding
" let g:xml_syntax_folding=1
" au BufNewFile,BufRead *.xml,*.xsl,*.lzx setlocal foldmethod=syntax
augroup filetype 
	autocmd BufNewFile,BufRead *.lzx set filetype=xml

" Function for enabling embedded syntax highlighting.  Usage: 
"   :call TextEnableCodeSnip( 'javascript', '<!\[CDATA\[', '\]\]>', 'SpecialComment' )
"
function! TextEnableCodeSnip( filetype, start, end, textSnipHl ) abort
  let ft=toupper(a:filetype)
  let group='textGroup'.ft
  if exists('b:current_syntax')
    let s:current_syntax=b:current_syntax
    " Remove current syntax definition, as some syntax files (e.g. cpp.vim)
    " do nothing if b:current_syntax is defined.
    unlet b:current_syntax
  endif
  execute 'syntax include @'.group.' syntax/'.a:filetype.'.vim'
  try
    execute 'syntax include @'.group.' after/syntax/'.a:filetype.'.vim'
  catch
  endtry
  if exists('s:current_syntax')
    let b:current_syntax=s:current_syntax
  else
    unlet b:current_syntax
  endif
  execute 'syntax region textSnip'.ft.'
  \ matchgroup='.a:textSnipHl.'
  \ start="'.a:start.'" end="'.a:end.'"
  \ contains=@'.group
endfunction

" Laszlo javascript highlighting
au BufRead,BufNewFile *.lzx call TextEnableCodeSnip( 'javascript', '<!\[CDATA\[', '\]\]>', 'SpecialComment' )

" art filetype
:autocmd FileType art set expandtab

:map \s :silent !screener.sh<CR>

" highlight long lines
" :hi LongLines term=standout ctermfg=red cterm=underline
" function! HighlightLongLines(width)
	" let targetWidth = a:width != '' ? a:width : 100
	" if targetWidth > 0
		" exec 'match LongLines /\%>' . (targetWidth) . 'v/'
	" else
		" echomsg "Usage: HighlightLongLines [natural number]"
	" endif
" endfunction

" function! CodeInit()
	" :call HighlightLongLines(100)
" endfunction

" :au BufWinEnter,BufRead,BufNewFile *.java,*.c,*.cpp,*.js :call CodeInit()

" highlight trailing whitespace
" :au BufWinEnter,BufRead,BufNewFile *.java,*.c,*.cpp,*.js,*.html,*.htm,*.xml,*.lzx let w:m1=matchadd( 'Error', '\s\{2,}$', -1)

" window stuff
:set laststatus=2
:set statusline=%F%m%r%h%w\ [TYPE=%{&ff}/%Y]\ [\%02.2B\ \%03.3b]\ [POS=%04l,%02v\ %p%%] 

" fold colors
:hi Folded ctermbg=black ctermfg=27

" Don't use Ex mode, use Q for formatting
map Q gq

" glsl shader formatting
au BufNewFile,BufRead *.frag,*.vert,*.fp,*.vp,*.glsl setf glsl 
" FAIL: au BufRead,BufNewFile *.cpp call TextEnableCodeSnip( 'glsl', '\"// @VIM-begin-glsl', '\"/\* @VIM-end-glsl \*/', 'SpecialComment' )

" undo any mappings for select mode
:smapclear

" fugitive
:nnoremap <silent> <Leader>gd :Gdiff<cr>
:nnoremap <silent> <Leader>gl :Glog<cr>
:nnoremap <silent> <Leader>gs :Gstatus<cr>
:nnoremap <silent> <Leader>gb :Gblame<cr>
:nnoremap <silent> <Leader>gc :Gcommit<cr>
:nnoremap <silent> <Leader>GC :Git svn dcommit<cr>
:nnoremap <silent> <Leader>GR :Git svn rebase<cr>
:nnoremap <silent> <Leader>amend :Git commit --amend<cr>
:nnoremap <silent> <Leader>stash :Git stash<cr>
:nnoremap <silent> <ieader>pop :Git stash pop<cr>

" change diff background highlighting
:highlight DiffAdd ctermbg=22
:highlight DiffChange ctermbg=17
:highlight DiffText ctermbg=19
:highlight DiffDelete ctermbg=52

" handle the case where you start Vim normally and want to use Vim's "Man" function.
" http://vim.wikia.com/wiki/Using_vim_as_a_man-page_viewer_under_Unix
let $PAGER=''

" vim-powerline: https://github.com/Lokaltog/vim-powerline/tree/develop/fontpatcher
let g:Powerline_symbols='fancy'
set guifont=progyytiny\ for\ Powerline

" get rid of namespace indentation
filetype plugin indent on
:set cino+=N-s

" tabs
set showtabline=1
hi TabLine      ctermfg=Black  ctermbg=Gray     cterm=NONE
hi TabLineFill  ctermfg=Black  ctermbg=Gray     cterm=NONE
hi TabLineSel   ctermfg=White  ctermbg=DarkBlue  cterm=NONE
:nnoremap d :tabp<cr>
:nnoremap n :tabn<cr>
:nnoremap w :tabc<cr>
