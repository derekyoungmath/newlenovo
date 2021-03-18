call plug#begin()
" Autocompletion
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install -all' }
Plug 'junegunn/fzf.vim'
Plug 'dense-analysis/ale' " LaTeX Linting
" Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'Shougo/unite.vim'
Plug 'davidhalter/jedi'
" Plug 'davidhalter/jedi-vim'
" Plug 'zchee/deoplete-zsh'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'felipec/notmuch-vim'
" Python
Plug 'zcesur/slimux'
Plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop' }
Plug 'hkupty/iron.nvim'
Plug 'metakirby5/codi.vim'
" Latex
Plug 'lervag/vimtex'
" Plug 'lervag/wiki.vim'
" Git, version control
" Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'junegunn/gv.vim'
Plug 'yuki-ycino/fzf-preview.vim'
" Syntax
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-speeddating'
Plug 'tpope/vim-obsession'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-surround'
Plug 'luochen1990/rainbow'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'mattn/emmet-vim'
Plug 'jiangmiao/auto-pairs'
" Plug 'mkitt/tabline.vim'
Plug 'powerline/powerline'
Plug 'chrisbra/csv.vim'
Plug 'altercation/vim-colors-solarized'
Plug 'christoomey/vim-tmux-navigator'
Plug 'ledger/vim-ledger'
" Plug 'dedmons/vim-ledger'
Plug 'romainl/vim-qf'
Plug 'tools-life/taskwiki'
Plug 'farseer90718/vim-taskwarrior'
Plug 'vit-project/vit'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
" Plug 'jceb/vim-orgmode'
Plug 'vimwiki/vimwiki'
" Plug 'kassio/neoterm'
Plug 'pseewald/vim-anyfold'
" Plug 'Konfekt/FastFold'
Plug 'vifm/vifm.vim'
" Plug 'roxma/nvim-completion-manager'
Plug 'itchyny/calendar.vim'
Plug 'skywind3000/vim-terminal-help'
Plug 'skywind3000/asyncrun.vim'
Plug 'benmills/vimux'
Plug 'mbbill/undotree'
Plug 'easymotion/vim-easymotion'
" Plug 'beloglazov/vim-online-thesaurus'
Plug 'brooth/far.vim'
Plug 'file:///home/dowewas2/Downloads/mycalendar'
call plug#end()

source /home/dowewas2/.cache/calendar.vim/credentials.vim

let g:fzf_preview_window = ['right:50%:hidden', 'ctrl-/']
let g:fzf_preview_command = '--preview "bat --theme="OneHalfDark" --style=numbers,changes --color always {2..-1} | head -'.&lines.'"'

" let g:wiki_root = '~/wiki'

" let g:fzf_preview_command = 'bat --color=always --style=grid {-1}'
let g:deoplete#enable_at_startup = 1

let g:airline#extensions#wordcount#enabled = 1
let g:airline#extensions#wordcount#filetypes = ['all']
let g:airline#extensions#wordcount#formatter#default#fmt = '%s words'

let g:qf_mapping_ack_style = 1
let g:qf_auto_quit = 0

command! SourceNeovimrc :so ~/.config/nvim/init.vim

" add myfiles to buffer list
" source $HOME/shell/mybuffer.vim
let g:calendar_google_calendar = 1
let g:calendar_clock_12hour = 1
let g:calendar_date_separator = "-"
let g:calendar_date_endian = "middle"
let g:calendar_date_month_name = 1
let g:calendar_cyclic_view = 1
let g:calendar_view = "agenda"
let g:calendar_week_number = 1
let g:calendar_views = ['agenda', 'month', 'year' ]
let g:calendar_time_zone = "-0400"

hi VimwikiHeader1 ctermfg=blue
hi VimwikiHeader2 ctermfg=magenta
hi VimwikiHeader3 ctermfg=darkgreen
hi VimwikiHeader4 ctermfg=red
hi VimwikiHeader5 ctermfg=yellow
hi VimwikiHeader6 ctermfg=white
let g:vimwiki_folding = 'list'

hi QuickFixLine ctermfg=darkgreen ctermbg=black
au BufReadPost quickfix set nonumber
"
let g:fzf_action = {
	\ 'ctrl-t': 'tab split',
	\ 'ctrl-o': 'e',
	\ 'ctrl-x': 'split',
	\ 'ctrl-a': 'select-all',
	\ 'ctrl-v': 'vsplit' }


filetype plugin on
filetype indent on
setlocal indentkeys-=:
set nocompatible
au BufNewFile,BufRead *.cal set filetype=cal
au BufNewFile,BufRead *.calv set filetype=calv
au BufNewFile,BufRead *.fzfnotmuch set filetype=fzfnotmuch
autocmd FileType fzfnotmuch setlocal commentstring=#\ %s
" automatically refreshes changed file
set autoread
" set relative number
set relativenumber
set number

" turn on syntax highlighting
syntax on

set path+=**
set clipboard+=unnamedplus
set wildmenu

"set spell
set noswapfile	"disable making swap file
set hidden

"change the cwd whenever a file is open
set autochdir	
"text wrapping options
set wrap
set linebreak
set nolist
set textwidth=79
set wrapmargin=79

"ignore case when doing a search
set ignorecase
" set old vim colors
set background=light
" set visual
hi Visual  ctermfg=Black ctermbg=Magenta cterm=none
" set fold foreground to dark green
highlight Folded ctermfg=darkgreen
" set search highlight
highlight Search ctermfg=red
highlight Search ctermbg=black

" set fold background to black
highlight Folded ctermbg=black

highlight! VertSplit ctermbg=Black ctermfg=Black cterm=NONE
highlight LineNr ctermfg=DarkGrey
highlight CursorLineNr ctermfg=Black ctermbg=DarkGrey
" highlight Tabline  ctermbg=DarkGrey ctermfg=Gray cterm=NONE
" highlight TablineFill  ctermfg=DarkGrey
" highlight TablineSel  ctermfg=White ctermbg=DarkGrey

" set different vim diff colors
highlight DiffAdd    cterm=bold ctermfg=10 ctermbg=17 gui=none guifg=bg guibg=Red
highlight DiffDelete cterm=bold ctermfg=10 ctermbg=17 gui=none guifg=bg guibg=Red
highlight DiffChange cterm=bold ctermfg=10 ctermbg=17 gui=none guifg=bg guibg=Red
highlight DiffText   cterm=bold ctermfg=10 ctermbg=88 gui=none guifg=bg guibg=Red

" set comment foreground to blue
highlight Comment ctermfg=blue

" deoplete colors
highlight Pmenu ctermbg=DarkGrey guibg=#606060
highlight PmenuSel ctermbg=Blue guifg=#dddd00 guibg=#1f82cd
highlight PmenuSbar ctermbg=0 guibg=#d6d6d6

" Always shows status line
set laststatus=2
set showtabline=0
set noshowmode

" Use 256 colours
set t_Co=256


" define leader map
let mapleader = "\\"
" time given to use leader key
set tm=500

let g:rainbow_active = 1
" Thesaurus
let g:tq_enabled_backends=["woxikon_de","jeck_ru","thesaurus_com","openoffice_en","mthesaur_txt"]

" LATEX
let g:tex_flavor = 'latex'
let g:vimtex_indent_bib_enabled = 1
let g:vimtex_view_method = 'zathura'
" let g:latex_view_general_viewer = 'zathura'
let g:vimtex_quickfix_open_on_warning = 0
let g:vimtex_view_enabled = 1
let g:vimtex_view_automatic = 1
let g:vimtex_compiler_progname = 'nvr'
let g:vimtex_syntax_enabled = 0
" DEOCOPLETE
" if !exists('g:deoplete#omni#input_patterns')
"     let g:deoplete#omni#input_patterns = {}
" endif
if !exists('g:deoplete#custom#var')
    let g:deoplete#custom#var = {}
endif
let g:deoplete#custom#var.tex = g:vimtex#re#deoplete
let g:deoplete#custom#var.ledger = ':\w'
let g:deoplete#enable_at_startup = 1
" let g:deoplete#sources#jedi#docstring = 1
let g:deoplete#auto_completion_start_length = 1
" let g:deoplete#sources#jedi#extra_path = ['/home/dowewas2/.sage/myfun/']
" let g:deoplete#sources#jedi#python_path = '/usr/bin/python2'
" let g:deoplete#sources#jedi#extra_path = '/home/dowewas2/.sage/myfun'
"
""" Iron vim repl Plugin

" let g:python_host_prog = '/usr/bin/python'
" let g:python3_host_prog = '/usr/bin/python3'

"""" Ledger Plugin

let g:ledger_date_format = '%m/%d/%Y'
let g:ledger_main = '~/ledger/ledger.ledger'
let g:ledger_maxwidth = 80
" let g:ledger_fillstring = '   -'
" let g:ledger_detailed_first = 1

" Remembers fold as well as cusor position.
" augroup remember_folds
" 	autocmd!
" 	autocmd BufWinLeave * mkview
" 	autocmd BufWinEnter * silent! loadview
" augroup END

"""" CSV Plugin

let b:csv_autocmd_align = 'l*'
let g:csv_move_folds = 1


""" UltiSnips Plugin

" opens snippet
let g:UltiSnipsExpandTrigger="kj"
" jumps forward in snippet mode
let g:UltiSnipsJumpForwardTrigger="<c-k>"
" jumps backward in snippet mode
let g:UltiSnipsJumpBackwardTrigger="<c-j>"
let g:UltiSnipsSnippetDirectories=["UltiSnips"]

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

let g:gitgutter_enabled = 0

" set statusline+=%{GitStatus()}
" set statusline+=%{fugitive#head()}
"

" enable status line for tmux
let g:airline_section_b='%{fugitive#statusline()}'
" powerline font
" let g:airline_powerline_fonts = 1
set encoding=utf-8
" spell check in airline status line
let g:airline_detect_spell=1

" file type
let g:airline_section_x = ''

" file encoding
let g:airline_section_y = ''
let g:airline_section_Y = ''

let g:airline_section_z = ''

" warning 
let g:airline_section_warning = ''

" use airline theme
" let g:airline_theme='minimalist'
" let g:airline_theme='distinguished'
let g:airline_theme='monochrome'
nnoremap gP :silent exec "!zathura <cfile> &"<CR><C-l><bar><C-l>

tmap <Tab> <Nop>
nnoremap <Tab> <Nop>

" move down one line 
nnoremap j gj
nnoremap tk 3j
" move up one line 
nnoremap k gk
" insert blank line below current line
nnoremap oo o<Esc>k
" insert blank line above current line
nnoremap OO O<Esc>j
" insert blank space at cursor
nnoremap os i<space><esc>
" change word
nnoremap cc ciw
" change line
nnoremap cl cVl
" yank word
nnoremap yw yiw
" yank cite
nnoremap yc F\vf}"+y
nnoremap yp za/password<cr>wwvE"+yza
" reset filetype
nnoremap <leader>re :filetype detect<CR>
" reset vim
nnoremap <leader>rr :w<cr>:so %<CR>
" turn spell check on
nnoremap sy :set spell<CR>
" turn spell check off
nnoremap sz :set nospell<CR>
" go to previous misspelled word
nnoremap sp [szz
" go to next misspelled word
nnoremap sn ]szz
" correct misspelled word under cursor
nnoremap sc z=
" add misspelled word to dictionary
nnoremap sa zg
" correct misspelled word under cursor
function! FzfSpellSink(word)
  exe 'normal! "_ciw'.a:word
endfunction
function! FzfSpell()
  let suggestions = spellsuggest(expand("<cword>"))
  return fzf#run({'source': suggestions, 'sink': function("FzfSpellSink"), 'down': 10 })
endfunction
nnoremap ss ]szz:call FzfSpell()<cr>
" nnoremap <silent> <Plug>FZFSPELL :call FzfSpell()<cr>:call repeat#set("\<Plug>FZFSPELL")<CR>
" nmap ss <Plug>FZFSPELL

nnoremap ' `

" [Commands] --expect expression for directly executing the command
let g:fzf_commands_expect = 'alt-enter,ctrl-x'
" [[B]Commits] Customize the options used by 'git log':
let g:fzf_commits_log_options = '--graph --color=always --format="%C(auto)%h%d %s %C(black)%C(bold)%cr"'
" save vim session to testy
command! MyFXF call fzf#vim#complete#word(
	\ {
	\ 'source': 'cat $HOME/ledger/defs.ledger',
	\ 'down': '20%',
	\ 'options': '--delimiter="=" --with-nth=2'
	\ })

" Global line completion (not just open buffers. ripgrep required.)
" Default fzf layout
" - down / up / left / right
let g:fzf_layout = { 'down': '~40%'}

" nnoremap g/ :History/<cr>
nnoremap g. :Files ~/<cr>
nnoremap g; :Buffers<cr>
nnoremap gw :Windows<cr>
nnoremap : :History:<cr>
nnoremap ; :
" nnoremap gh :History:<cr>
nnoremap gv :Vifm .<cr>
nnoremap gs :Gstatus<cr>
nnoremap <silent> gS :<C-u>FzfPreviewGitStatus -processors=g:fzf_preview_fugitive_processors<CR>
nnoremap gl :GV --all<CR>
nnoremap ga :Lines!<CR>
nnoremap gb :BLines!<CR>
nnoremap gd :Files!<CR>
nnoremap gx :GFiles!<CR>

" open file under cursor in new tab
nnoremap gk gf
nnoremap gK <c-w>gf

" writes current file name to ~/cache/mybuffer.md
command! MyWriteFileToMyBuffer :redir >> $HOME/cache/mybuffer.md | echo expand("%:p") | redir END
" make tex file/folder in current directory with name as word under cursor
nnoremap <leader>bv yiw:silent exec "!~/shell/mrtask.zsh <c-r>""<CR><c-l>
" note snippet for refs.bib file
command! MyBibTexAddNotes :normal! yiwA<return><space><space><space>NOTES = {<return>\cite{<esc>pA}<return>[[~/bitbucket/papers/<esc>pA.pdf]]<return>[[~/bitbucket/papers/<esc>pA/<esc>pA.tex]]<return>},<esc>
nnoremap <leader>bf :MyBibTexAddNotes<cr>

" make line a markdown 1 header
nnoremap c= yypVr=
" make line a markdown 2 header
nnoremap c- yypVr-

nnoremap L $
nnoremap H 0
vnoremap L $
vnoremap H 0
nnoremap M 45l
vnoremap <leader>y "+y
nnoremap <leader>p "*p

" GIT VERSION CONTROL

" add file
nnoremap Ga :w<CR><bar>:TT git ac ""<Left>
" commit file
command! GitCommitAll :normal Gc
nnoremap Gc :w<CR><bar>:Gcommit % -m ""<Left>
" command GitUpdateFile :w | !git commit -m "update" %
" command GitUpdateAll :w | !git up<cr>

nnoremap GL :Gcd<CR><bar>gg/begin{document<cr>V/end{document<cr>:Glog<CR>

" show file diff side by side
nnoremap Gd :Gdiff<CR>:wincmd r<CR>:wincmd w<CR>

" go to next hunk
nnoremap gn ]czz
" go to previous hunk
nnoremap gp [czz
" commit staged changes
nnoremap <leader>hc :w<CR><bar>:Gcommit -m ""<Left>
" turn on diff highlight for this file
" nnoremap gd :GitGutterLineHighlightsToggle<cr>



" " turns off search highlighting
" command! MyNoHighlight :noh
" nnoremap <leader>h :MyNoHighlight<cr>
"
" nnoremap <A-h> <C-w>h
" nnoremap <A-j> <C-w>j
" nnoremap <A-k> <C-w>k
" nnoremap <A-l> <C-w>l
nnoremap <A-r> <C-w>H

noremap <A-n> :cnext<cr>
nnoremap <A-o> :copen<cr>
nnoremap <A-c> :cclose<cr>
nnoremap <A-p> :cprevious<cr>

function! s:build_quickfix_list(lines)
  call setqflist(map(copy(a:lines), '{ "filename": v:val }'))
  botright copen
  cc
endfunction

nnoremap g/ :Ag!<cr>

autocmd Filetype py AnyFoldActivate
autocmd Filetype ledger AnyFoldActivate
" autocmd Filetype markdown AnyFoldActivate
autocmd Filetype zsh AnyFoldActivate
autocmd Filetype mail AnyFoldActivate
" terminal mode
tnoremap <leader>q <C-\><C-n>

" " fzf
function! s:fzf_statusline()
  " Override statusline as you like
  highlight fzf1 ctermfg=darkgreen ctermbg=black
  highlight fzf2 ctermfg=darkgreen ctermbg=black
  highlight fzf3 ctermfg=darkgreen ctermbg=black
  setlocal statusline=%#fzf1#\ >\ %#fzf2#fz%#fzf3#f
endfunction

autocmd! User FzfStatusLine call <SID>fzf_statusline()
" nmap S<return> :IronRepl<cr>
" nmap s<return> mm0V<Plug>(iron-send-motion)'m
" nmap <leader><return> <Plug>(iron-repeat-cmd)
" nnoremap <leader>3 :set filetype=zsh<cr>:set syntax=python<cr>
" let g:iron_repl_open_cmd = "vsplit"
" set fillchars+=vert:\ 
"
nnoremap <silent> <A-h> <<
nnoremap <silent> <A-l> >>
nnoremap <silent> <A-k> :move-2<cr>
nnoremap <silent> <A-j> :move+<cr>

" open pdf
nnoremap <silent> gO :!okular <cfile> &<cr><cr>
nnoremap <silent> go mk:call search('home','bc')<cr>:!okular <cfile> &<cr><cr>`k:noh<cr>

" spell error colors
hi clear SpellBad
hi SpellBad cterm=underline,bold

" calendar variables
let g:calyear = strftime("%Y")
let g:currentyearfile = 2021

" make executable files
function! MakeExFile()
	let g:myfilename = input('File name: ')
	call system("touch /home/dowewas2/shell/".g:myfilename.".zsh")
	call system("echo '#!/usr/bin/zsh' > /home/dowewas2/shell/".g:myfilename.".zsh")
	call system("chmod +x /home/dowewas2/shell/".g:myfilename.".zsh")
	call system("cat /home/dowewas2/shell/".g:myfilename.".zsh >> /home/cache/mybuffer.md")
	execute 'tabedit' '/home/dowewas2/shell/'.g:myfilename.".zsh"
endfunction
function! MakePyFile()
	let g:myfilename = input('File name: ')
	call system("touch /home/dowewas2/shell/".g:myfilename.".py")
	call system("echo '#!/usr/bin/python' > /home/dowewas2/shell/".g:myfilename.".py")
	call system("chmod +x /home/dowewas2/shell/".g:myfilename.".py")
	call system("cat /home/dowewas2/shell/".g:myfilename.".py >> /home/cache/mybuffer.md")
	execute 'tabedit' '/home/dowewas2/shell/'.g:myfilename.".py"
endfunction

command! -bar -nargs=1 -bang -complete=file RN :
  \ let s:file = expand('%:p') |
  \ setlocal modified |
  \ keepalt saveas<bang> <args> |
  \ if s:file !=# expand('%:p') |
  \   call delete(s:file) |
  \ endif |
  \ unlet s:file

nnoremap <leader>R :let @" = expand("%:p")<cr>:RN <c-r>"


function! s:MY_D(tines)
	let g:repeatrename2 = a:tines
	echo g:repeatrename." and ".g:repeatrename2
endfunction
command! MYD call fzf#run({'options': '--reverse --prompt "pick your poison"','source': 'cat /home/dowewas2/ledger/change.ledger','sink': function('<sid>MY_D'),'right': '30%'})

function! s:MY_F(lines)
	let g:repeatrename = a:lines
endfunction
command! MYF call fzf#run({'options': '--reverse --prompt "pick your poison"','source': 'cat /home/dowewas2/ledger/change.ledger','sink': function('<sid>MY_F'),'right': '30%'})
nnoremap <leader>3 :MYF<cr>:call getchar()<cr>
" nnoremap <leader>p m9gqap'9
set foldlevel=0
" tnoremap <C-i> <C-\><C-n>:b#<cr>
tnoremap <tab> <C-w><C-w>
nnoremap <leader>u :UndotreeToggle<cr>
let g:undotree_RelativeTimestp = 1
let g:undotree_WindowLayout = 4
if has("persistent_undo")
	set undodir=$HOME/.undodir
	set undofile
endif
command! HtmlMakeSpring20 call system('~/courses/spring20/make.py make_all')
command! FindFunction :cd /home/dowewas2/<bar>Ag!
" let g:terminal_height=120
" let g:terminal_kill=1
" let g:terminal_list=0
" let g:terminal_cwd=1
command! -nargs=1 NeomuttFilter call system('~/shell/notmuch_mail.py filter_mail '.<q-args>)
command! -nargs=1 MakeCourse call system('~/courses/spring20/grades/makeemails.py '.<q-args>)
function! WriteEdit(filen)
	let g:newwritefile = a:filen
	exec "write ".g:newwritefile
	exec "edit ".g:newwritefile
endfunction
function! WriteTmpCsv()
	let g:newwritefile = os.system("~/.sage/myfun/copyfile.py mynewfile --currentfile=" . expand("%:p"). "--currentpath=" . expand("%:p:h"))
	echo g:newwritefile
endfunction
nnoremap <leader>sw :call WriteEdit("")<left><left>
nnoremap <leader>sc :call WriteTmpCsv()<cr>

let g:VimuxHeight = "10"
let g:VimuxWidth = "10"
command! -bar -nargs=1 -bang -complete=file MT :silent exec "call VimuxRunCommand(\"".<q-args>."\")"
nnoremap , :MT<space>
command! -bar -nargs=1 -bang -complete=file MT :silent exec "call VimuxRunCommand(\"".<q-args>."\")"
command! -bar -nargs=1 -bang -complete=file TA :silent exec "!task add tag:".<q-args>
nnoremap <leader>ot :TA<space>
command! -bar -nargs=1 -bang -complete=file MK :silent exec "!tmux send-keys -t Calcurse:2.2 ';e ~/calendar/list/x".<q-args>.".md' C-m"
nnoremap <leader>ol :MK<space>

function! s:MyLabel(lines)
	call system("~/shell/notmuch_mail.py filter_mail --filterfile=".a:lines)
endfunction
command! FZFnotmuchLabels call fzf#run(
	\ {
	\ 'options': '--reverse',
	\ 'source': 'ls $HOME/cache/filters/',
	\ 'sink': function('<sid>MyLabel'),
	\ 'right': '30%',
	\ 'bind': 'ctrl-a:toggle+down+backward-kill-word'
	\ })

nmap f <Plug>(easymotion-s)
" nmap f <Plug>(easymotion-jumptoanywhere)
let g:EasyMotion_keys = ',.;acdefghijklmnopqrsuvwxyz38291[]45670'
let g:EasyMotion_disable_two_key_combo = 1

map <Leader>l <Plug>(easymotion-lineforward)
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
map <Leader>h <Plug>(easymotion-linebackward)
let g:EasyMotion_startofline = 0 " keep cursor column when JK motion
let g:EasyMotion_use_smartsign_us = 1 " US layout

function! s:FzfOpenUrlcat(lines)
	" call system("~/shell/zsh_functions.zsh vim_open_url www.google.com ")
	call system("~/shell/zsh_functions.zsh vim_open_url ".a:lines)
endfunction
function! FzfOpenUrlsave()
	call system("~/shell/zsh_functions.zsh vim_fzf_url " . expand("%:p"))
	FzfOpenUrlrun
endfunction
command! FzfOpenUrlrun call fzf#run(
		\ {
		\ 'options': '--multi --reverse --prompt "pick your poison "',
		\ 'source': 'cat $HOME/tempurl',
		\ 'sink': function('<sid>FzfOpenUrlcat'),
		\ 'bottom': '30%',
		\ 'bind': 'ctrl-a:toggle+down+backward-kill-word'
		\ })
command! FzfOpenUrl call FzfOpenUrlsave()
" nnoremap <Tab> :bp<cr>
" nnoremap <S-Tab> :bn<cr>

""""""" fzfpreviw settings

nmap <Leader>f [fzf-p]
xmap <Leader>f [fzf-p]
nnoremap <silent> [fzf-p]gs :<C-u>FzfPreviewGitStatus -processors=g:fzf_preview_fugitive_processors<CR>

augroup fzf_preview
  autocmd!
  autocmd User fzf_preview#initialized call s:fzf_preview_settings()
augroup END

function! s:fugitive_add(paths) abort
  for path in a:paths
    execute 'silent G add ' . path
  endfor
  echomsg 'Git add ' . join(a:paths, ', ')
endfunction

function! s:fugitive_reset(paths) abort
  for path in a:paths
    execute 'silent G reset ' . path
  endfor
  echomsg 'Git reset ' . join(a:paths, ', ')
endfunction

function! s:fugitive_patch(paths) abort
  for path in a:paths
    execute 'silent tabedit ' . path . ' | silent Gdiff'
  endfor
  echomsg 'Git add --patch ' . join(a:paths, ', ')
endfunction

function! s:fzf_preview_settings() abort
  let g:fzf_preview_fugitive_processors = fzf_preview#resource_processor#get_processors()
  let g:fzf_preview_fugitive_processors['ctrl-a'] = function('s:fugitive_add')
  let g:fzf_preview_fugitive_processors['ctrl-r'] = function('s:fugitive_reset')
  let g:fzf_preview_fugitive_processors['ctrl-c'] = function('s:fugitive_patch')
endfunction

nnoremap <silent> [fzf-p]b     :<C-u>FzfPreviewBuffers<CR>
nnoremap <silent> [fzf-p]<C-o> :<C-u>FzfPreviewJumps<CR>
nnoremap <silent> [fzf-p]g;    :<C-u>FzfPreviewChanges<CR>
nnoremap <silent> [fzf-p]/     :<C-u>FzfPreviewLines -add-fzf-arg=--no-sort -add-fzf-arg=--query="'"<CR>
nnoremap <silent> [fzf-p]*     :<C-u>FzfPreviewLines -add-fzf-arg=--no-sort -add-fzf-arg=--query="'<C-r>=expand('<cword>')<CR>"<CR>
xnoremap          [fzf-p]gr    "sy:FzfPreviewProjectGrep<Space>-F<Space>"<C-r>=substitute(substitute(@s, '\n', '', 'g'), '/', '\\/', 'g')<CR>"
nnoremap <silent> [fzf-p]q     :<C-u>FzfPreviewQuickFix<CR>
""""""" fzfpreviw settings
let g:terminal_pos='vertical botright'
let g:terminal_height=80
let g:terminal_kill=1
let g:terminal_list=0
let g:terinal_cwd=1
command! -bang -nargs=* TT AsyncRun -mode=term -pos=thelp <args>

 let g:vimwiki_listsyms = ' ○◐●✓'
let g:vimwiki_list = [{'path': '~/notes/', 'auto_toc': 1,
                      \ 'syntax': 'default', 'ext': '.md'},
		      \ {'path': '~/calendar/list/', 'auto_toc': 1,
                      \ 'syntax': 'default', 'ext': '.md'},
		      \ {'path': '~/todo/', 'auto_toc': 1,
                      \ 'syntax': 'default', 'ext': '.md'}]

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""sink functions"""
function! s:InsertDate(lines)
	put=a:lines
	normal kJ$
endfunction

""" Fuzzy Function """

let g:AllFuzzy_File = {
	\'date' : [
		\ '/home/dowewas2/shell/notmuch_mail.py insertdate',
		\ 'InsertDate'
		\ ],
	\'time' : [
		\ '/home/dowewas2/shell/notmuch_mail.py inserttime',
		\ 'InsertDate'
		\ ],
	\ }

function! AllFuzzyFunction(thefunction)
	let l:thesource = g:AllFuzzy_File[a:thefunction][0]
	let l:thesink = g:AllFuzzy_File[a:thefunction][1]
	call fzf#run({
		\"source": l:thesource,
		\"sink": function("s:".l:thesink.""),
		\ 'options': '-m --reverse',
		\ 'window': 'call fzf_preview#window#create_centered_floating_window()',
		\"right": "30%"})
endfunction
command! -nargs=1 FFall call AllFuzzyFunction(<f-args>)
nnoremap <leader>d FFall date
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

imap <c-x><c-f> FFall date
inoremap <expr> <c-x><c-c> fzf#vim#complete('cat /usr/share/dict/cracklib-small')
function! Dicti()
	getline('.')
	normal miyiw
	normal "i
endfunction

function! s:make_sentence(lines)
  return substitute(join(a:lines), '^.', '\=toupper(submatch(0))', '')
endfunction

inoremap <expr> <c-x><c-s> fzf#vim#complete({
  \ 'source':  '/home/dowewas2/shell/notmuch_mail.py inserttime',
  \ 'reducer': function('<sid>make_sentence'),
  \})
inoremap <expr> <c-x><c-e> fzf#vim#complete({
  \ 'source':  '/home/dowewas2/shell/notmuch_mail.py insertdate',
  \ 'reducer': function('<sid>make_sentence'),
  \})
inoremap <expr> <c-i><c-i> fzf#vim#complete#line({'window': { 'width': 0.8, 'height': 0.9, 'xoffset': 1 }})
inoremap <expr> <c-i><c-o> fzf#vim#complete#line({'window': { 'width': 0.8, 'height': 0.9, 'xoffset': 1 }})

nnoremap <leader>ai :e +startinsert ~/notes/temp.md<cr>
nnoremap <leader>at :w<cr>ggO<esc>O<esc>i:
nnoremap <leader>aw  :w<cr>:NotesWrite<cr>
function! s:NotesWrite_F(lines)
	bd! ~/notes/temp.md
	call system('cat ~/notes/temp.md  > /tmp/notestemp')
	call system('cat ~/notes/'.a:lines.' >> /tmp/notestemp')
	call system('cat /tmp/notestemp > ~/notes/'.a:lines)
	call system("echo '\n' > ~/notes/temp.md")
endfunction
command! NotesWrite call fzf#run({'options': '--reverse --prompt "pick your poison"','source': 'ls /home/dowewas2/notes/','sink': function('<sid>NotesWrite_F'),'right': '30%'})

set lazyredraw            " improve scrolling performance when navigating through large results
set regexpengine=1        " use old regexp engine
set ignorecase smartcase  " ignore case only when the pattern contains no capital letters

" shortcut for far.vim find
nnoremap <silent> <Find-Shortcut>  :Farf<cr>
vnoremap <silent> <Find-Shortcut>  :Farf<cr>

" shortcut for far.vim replace
nnoremap <silent> <Replace-Shortcut>  :Farr<cr>
vnoremap <silent> <Replace-Shortcut>  :Farr<cr>


nnoremap <leader>vo :call VimuxOpenRunner()<CR>
" Run the current file with rspec
nnoremap <leader>vr :call VimuxRunCommand("clear; rspec " . bufname("%"))<CR>
" Prompt for a command to run
nnoremap <leader>vp :VimuxPromptCommand<CR>
" Run last command executed by VimuxRunCommand
nnoremap <leader>vl :VimuxRunLastCommand<CR>
" Inspect runner pane
nnoremap <leader>vi :VimuxInspectRunner<CR>
" Close vim tmux runner opened by VimuxRunCommand
nnoremap <leader>vq :VimuxCloseRunner<CR>
" Interrupt any command running in the runner pane
nnoremap <leader>vx :VimuxInterruptRunner<CR>
" Zoom the runner pane (use <bind-key> z to restore runner pane)
nnoremap <leader>vz :call VimuxZoomRunner()<CR>
let g:VimuxHeight = "50"
let g:VimuxOrientation = "h"

nnoremap zo zA
" nnoremap <leader>J J
" nnoremap <leader>K K
" nnoremap J <C-e>
" nnoremap K <C-y>


"" AUTO-PAIRS -------------------

" let g:AutoPairsShortcutBackInsert = '<M-b>'
let g:AutoPairsShortcutToggle = '<M-b>'
" let g:AutoPairsFlyMode = 1

"" Coc -------------------
" let g:coc_global_extensions = [
"   \ 'coc-vimtex',
"   \ ]
"
let g:taskwiki_disable_concealcursor='yes'

highlight EndOfBuffer ctermfg=black ctermbg=black

augroup TaskwarriorMapping
    autocmd!
    autocmd FileType taskreport nmap <buffer> x
	\ <Plug>(taskwarrior_done)
    autocmd FileType taskreport nmap <buffer> x
    	\ <Plug>(taskwarrior_visual_done)
augroup END

function GoToDairyNote()
	let l:mysday = system("date +'~/notes/diary/%Y-%m-%d.md'")
	exec "edit ".l:mysday[:-2]
endfunction

nnoremap gi :call GoToDairyNote()<cr>
