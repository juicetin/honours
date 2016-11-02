let SessionLoad = 1
if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
inoremap <silent> <Plug>(table-mode-tableize) |:call tablemode#TableizeInsertMode()a
map  :NERDTreeTabsToggle
map  <Plug>(ctrlp)
map  :TableModeToggle
xmap S <Plug>VSurround
xmap \T <Plug>(table-mode-tableize-delimiter)
xmap \tt <Plug>(table-mode-tableize)
nmap \tt <Plug>(table-mode-tableize)
nnoremap <silent> \tm :call tablemode#Toggle()
nmap cS <Plug>CSurround
nmap cs <Plug>Csurround
nmap ds <Plug>Dsurround
vmap gx <Plug>NetrwBrowseXVis
nmap gx <Plug>NetrwBrowseX
xmap gS <Plug>VgSurround
nnoremap j gj						"Treat broken lines as separate lines for line navigation
nnoremap k gk						"Treat broken lines as separate lines for line navigation
nmap ySS <Plug>YSsurround
nmap ySs <Plug>YSsurround
nmap yss <Plug>Yssurround
nmap yS <Plug>YSurround
nmap ys <Plug>Ysurround
vnoremap <silent> <Plug>NetrwBrowseXVis :call netrw#BrowseXVis()
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#BrowseX(expand((exists("g:netrw_gx")? g:netrw_gx : '<cfile>')),netrw#CheckIfRemote())
nnoremap <silent> <Plug>(table-mode-sort) :call tablemode#spreadsheet#Sort('')
nnoremap <silent> <Plug>(table-mode-eval-formula) :call tablemode#spreadsheet#formula#EvaluateFormulaLine()
nnoremap <silent> <Plug>(table-mode-add-formula) :call tablemode#spreadsheet#formula#Add()
nnoremap <silent> <Plug>(table-mode-delete-column) :call tablemode#spreadsheet#DeleteColumn()
nnoremap <silent> <Plug>(table-mode-delete-row) :call tablemode#spreadsheet#DeleteRow()
xnoremap <silent> <Plug>(table-mode-cell-text-object-i) :call tablemode#spreadsheet#cell#TextObject(1)
xnoremap <silent> <Plug>(table-mode-cell-text-object-a) :call tablemode#spreadsheet#cell#TextObject(0)
onoremap <silent> <Plug>(table-mode-cell-text-object-i) :call tablemode#spreadsheet#cell#TextObject(1)
onoremap <silent> <Plug>(table-mode-cell-text-object-a) :call tablemode#spreadsheet#cell#TextObject(0)
nnoremap <silent> <Plug>(table-mode-motion-right) :call tablemode#spreadsheet#cell#Motion('l')
nnoremap <silent> <Plug>(table-mode-motion-left) :call tablemode#spreadsheet#cell#Motion('h')
nnoremap <silent> <Plug>(table-mode-motion-down) :call tablemode#spreadsheet#cell#Motion('j')
nnoremap <silent> <Plug>(table-mode-motion-up) :call tablemode#spreadsheet#cell#Motion('k')
nnoremap <silent> <Plug>(table-mode-realign) :call tablemode#table#Realign('.')
xnoremap <silent> <Plug>(table-mode-tableize-delimiter) :call tablemode#TableizeByDelimiter()
xnoremap <silent> <Plug>(table-mode-tableize) :Tableize
nnoremap <silent> <Plug>(table-mode-tableize) :Tableize
nnoremap <silent> <Plug>SurroundRepeat .
nnoremap <silent> <Plug>(ctrlp) :CtrlP
nnoremap <F6> :make %:r && ./%:r
map <F5> :set relativenumber! 	"Toggle relative line numbers
map <F4> :set nowrap! linebreak nolist			"Toggle line wrapping
imap S <Plug>ISurround
imap s <Plug>Isurround
imap  <Plug>Isurround
imap jk 		"jk to escape
let &cpo=s:cpo_save
unlet s:cpo_save
set autoindent
set background=dark
set backspace=indent,eol,start
set cinoptions=g0
set clipboard=unnamed
set expandtab
set fileencodings=ucs-bom,utf-8,default,latin1
set grepprg=ag\ --nogroup\ --nocolor
set helplang=en
set hlsearch
set incsearch
set mouse=a
set ruler
set runtimepath=~/.vim,~/.vim/bundle/Vundle.vim,~/.vim/bundle/syntaxconkyrc.vim,~/.vim/bundle/vim-nerdtree-tabs,~/.vim/bundle/vimtex,~/.vim/bundle/vim-haskellFold,~/.vim/bundle/vim-json,~/.vim/bundle/SimpylFold,~/.vim/bundle/wordCount.vim,~/.vim/bundle/idris-vim,~/.vim/bundle/vim-colors-solarized,~/.vim/bundle/tabular,~/.vim/bundle/vim-markdown,~/.vim/bundle/ctrlp.vim,~/.vim/bundle/nerdtree,~/.vim/bundle/vim-surround,~/.vim/bundle/vim-obsession,~/.vim/bundle/vim-table-mode,~/.vim/bundle/tabline.vim,/usr/share/vim/vimfiles,/usr/share/vim/vim80,/usr/share/vim/vimfiles/after,~/.vim/after,~/.vim/bundle/Vundle.vim,~/.vim/bundle/Vundle.vim/after,~/.vim/bundle/syntaxconkyrc.vim/after,~/.vim/bundle/vim-nerdtree-tabs/after,~/.vim/bundle/vimtex/after,~/.vim/bundle/vim-haskellFold/after,~/.vim/bundle/vim-json/after,~/.vim/bundle/SimpylFold/after,~/.vim/bundle/wordCount.vim/after,~/.vim/bundle/idris-vim/after,~/.vim/bundle/vim-colors-solarized/after,~/.vim/bundle/tabular/after,~/.vim/bundle/vim-markdown/after,~/.vim/bundle/ctrlp.vim/after,~/.vim/bundle/nerdtree/after,~/.vim/bundle/vim-surround/after,~/.vim/bundle/vim-obsession/after,~/.vim/bundle/vim-table-mode/after,~/.vim/bundle/tabline.vim/after
set shiftwidth=4
set showcmd
set showtabline=2
set statusline=%{wordCount#WordCount()}
set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc,.png,.jpg,.fdb_latexmk,.fls,.pdf,.synctex.gz
set tabline=%!Tabline()
set tabstop=4
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/programming/jt-honours
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +63 thesis/litreview/litreview.tex
badd +0 thesis/references.bib
argglobal
silent! argdel *
edit thesis/litreview/litreview.tex
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
let s:cpo_save=&cpo
set cpo&vim
imap <buffer> <silent> <F7> <Plug>(vimtex-cmd-create)
inoremap <buffer> <silent> <Plug>(vimtex-delim-close) =vimtex#delim#close()
inoremap <buffer> <silent> <Plug>(vimtex-cmd-create) =vimtex#cmd#create()
omap <buffer> <silent> % <Plug>(vimtex-%)
xmap <buffer> <silent> % <Plug>(vimtex-%)
nmap <buffer> <silent> % <Plug>(vimtex-%)
omap <buffer> <silent> [[ <Plug>(vimtex-[[)
omap <buffer> <silent> [] <Plug>(vimtex-[])
xmap <buffer> <silent> [[ <Plug>(vimtex-[[)
xmap <buffer> <silent> [] <Plug>(vimtex-[])
nmap <buffer> <silent> [[ <Plug>(vimtex-[[)
nmap <buffer> <silent> [] <Plug>(vimtex-[])
nmap <buffer> <silent> \lm <Plug>(vimtex-imaps-list)
nmap <buffer> <silent> \lv <Plug>(vimtex-view)
nmap <buffer> <silent> \lY <Plug>(vimtex-labels-toggle)
nmap <buffer> <silent> \ly <Plug>(vimtex-labels-open)
nmap <buffer> <silent> \lT <Plug>(vimtex-toc-toggle)
nmap <buffer> <silent> \lt <Plug>(vimtex-toc-open)
nmap <buffer> <silent> \lG <Plug>(vimtex-status-all)
nmap <buffer> <silent> \lg <Plug>(vimtex-status)
nmap <buffer> <silent> \lC <Plug>(vimtex-clean-full)
nmap <buffer> <silent> \lc <Plug>(vimtex-clean)
nmap <buffer> <silent> \le <Plug>(vimtex-errors)
nmap <buffer> <silent> \lK <Plug>(vimtex-stop-all)
nmap <buffer> <silent> \lk <Plug>(vimtex-stop)
xmap <buffer> <silent> \lL <Plug>(vimtex-compile-selected)
nmap <buffer> <silent> \lL <Plug>(vimtex-compile-selected)
nmap <buffer> <silent> \lo <Plug>(vimtex-compile-output)
nmap <buffer> <silent> \ll <Plug>(vimtex-compile-toggle)
nmap <buffer> <silent> \ls <Plug>(vimtex-toggle-main)
nmap <buffer> <silent> \lx <Plug>(vimtex-reload)
nmap <buffer> <silent> \lI <Plug>(vimtex-info-full)
nmap <buffer> <silent> \li <Plug>(vimtex-info)
omap <buffer> <silent> ][ <Plug>(vimtex-][)
omap <buffer> <silent> ]] <Plug>(vimtex-]])
xmap <buffer> <silent> ][ <Plug>(vimtex-][)
xmap <buffer> <silent> ]] <Plug>(vimtex-]])
nmap <buffer> <silent> ][ <Plug>(vimtex-][)
nmap <buffer> <silent> ]] <Plug>(vimtex-]])
omap <buffer> <silent> a$ <Plug>(vimtex-a$)
xmap <buffer> <silent> a$ <Plug>(vimtex-a$)
omap <buffer> <silent> ae <Plug>(vimtex-ae)
xmap <buffer> <silent> ae <Plug>(vimtex-ae)
omap <buffer> <silent> ad <Plug>(vimtex-ad)
xmap <buffer> <silent> ad <Plug>(vimtex-ad)
omap <buffer> <silent> ac <Plug>(vimtex-ac)
xmap <buffer> <silent> ac <Plug>(vimtex-ac)
nmap <buffer> <silent> csc <Plug>(vimtex-cmd-change)
nmap <buffer> <silent> cse <Plug>(vimtex-env-change)
nmap <buffer> <silent> cs$ <Plug>(vimtex-env-change-math)
nmap <buffer> <silent> dsc <Plug>(vimtex-cmd-delete)
nmap <buffer> <silent> dse <Plug>(vimtex-env-delete)
nmap <buffer> <silent> ds$ <Plug>(vimtex-env-delete-math)
omap <buffer> <silent> i$ <Plug>(vimtex-i$)
xmap <buffer> <silent> i$ <Plug>(vimtex-i$)
omap <buffer> <silent> ie <Plug>(vimtex-ie)
xmap <buffer> <silent> ie <Plug>(vimtex-ie)
omap <buffer> <silent> id <Plug>(vimtex-id)
xmap <buffer> <silent> id <Plug>(vimtex-id)
omap <buffer> <silent> ic <Plug>(vimtex-ic)
xmap <buffer> <silent> ic <Plug>(vimtex-ic)
vmap <buffer> <silent> tsd <Plug>(vimtex-delim-toggle-modifier)
nmap <buffer> <silent> tsd <Plug>(vimtex-delim-toggle-modifier)
nmap <buffer> <silent> tse <Plug>(vimtex-env-toggle-star)
nmap <buffer> <silent> <F7> <Plug>(vimtex-cmd-create)
nnoremap <buffer> <Plug>(vimtex-view) :call b:vimtex.viewer.view('')
nnoremap <buffer> <Plug>(vimtex-toc-toggle) :call vimtex#toc#toggle()
nnoremap <buffer> <Plug>(vimtex-toc-open) :call vimtex#toc#open()
onoremap <buffer> <silent> <Plug>(vimtex-a$) :call vimtex#text_obj#delimited(0,'env_math')
onoremap <buffer> <silent> <Plug>(vimtex-i$) :call vimtex#text_obj#delimited(1,'env_math')
xnoremap <buffer> <silent> <Plug>(vimtex-a$) :call vimtex#text_obj#delimited(0,'env_math')
xnoremap <buffer> <silent> <Plug>(vimtex-i$) :call vimtex#text_obj#delimited(1,'env_math')
onoremap <buffer> <silent> <Plug>(vimtex-ae) :call vimtex#text_obj#delimited(0,'env')
onoremap <buffer> <silent> <Plug>(vimtex-ie) :call vimtex#text_obj#delimited(1,'env')
xnoremap <buffer> <silent> <Plug>(vimtex-ae) :call vimtex#text_obj#delimited(0,'env')
xnoremap <buffer> <silent> <Plug>(vimtex-ie) :call vimtex#text_obj#delimited(1,'env')
onoremap <buffer> <silent> <Plug>(vimtex-ad) :call vimtex#text_obj#delimited(0,'delim_all')
onoremap <buffer> <silent> <Plug>(vimtex-id) :call vimtex#text_obj#delimited(1,'delim_all')
xnoremap <buffer> <silent> <Plug>(vimtex-ad) :call vimtex#text_obj#delimited(0,'delim_all')
xnoremap <buffer> <silent> <Plug>(vimtex-id) :call vimtex#text_obj#delimited(1,'delim_all')
onoremap <buffer> <silent> <Plug>(vimtex-ac) :call vimtex#text_obj#commands(0)
onoremap <buffer> <silent> <Plug>(vimtex-ic) :call vimtex#text_obj#commands(1)
xnoremap <buffer> <silent> <Plug>(vimtex-ac) :call vimtex#text_obj#commands(0)
xnoremap <buffer> <silent> <Plug>(vimtex-ic) :call vimtex#text_obj#commands(1)
xnoremap <buffer> <silent> <SNR>87_(vimtex-[[) :call vimtex#motion#next_section(0,1,1)
xnoremap <buffer> <silent> <SNR>87_(vimtex-[]) :call vimtex#motion#next_section(1,1,1)
xnoremap <buffer> <silent> <SNR>87_(vimtex-][) :call vimtex#motion#next_section(1,0,1)
xnoremap <buffer> <silent> <SNR>87_(vimtex-]]) :call vimtex#motion#next_section(0,0,1)
nnoremap <buffer> <silent> <Plug>(vimtex-[[) :call vimtex#motion#next_section(0,1,0)
nnoremap <buffer> <silent> <Plug>(vimtex-[]) :call vimtex#motion#next_section(1,1,0)
nnoremap <buffer> <silent> <Plug>(vimtex-][) :call vimtex#motion#next_section(1,0,0)
nnoremap <buffer> <silent> <Plug>(vimtex-]]) :call vimtex#motion#next_section(0,0,0)
xnoremap <buffer> <silent> <SNR>87_(vimtex-%) :call vimtex#motion#find_matching_pair(1)
nnoremap <buffer> <silent> <Plug>(vimtex-%) :call vimtex#motion#find_matching_pair()
nnoremap <buffer> <SNR>87_(V) V
nnoremap <buffer> <SNR>87_(v) v
xnoremap <buffer> <Plug>(vimtex-compile-selected) :call vimtex#latexmk#compile_selected('visual')
nnoremap <buffer> <Plug>(vimtex-compile-selected) :set opfunc=vimtex#latexmk#compile_selectedg@
nnoremap <buffer> <Plug>(vimtex-lacheck) :call vimtex#latexmk#lacheck()
nnoremap <buffer> <Plug>(vimtex-status-all) :call vimtex#latexmk#status(1)
nnoremap <buffer> <Plug>(vimtex-status) :call vimtex#latexmk#status(0)
nnoremap <buffer> <Plug>(vimtex-clean-full) :call vimtex#latexmk#clean(1)
nnoremap <buffer> <Plug>(vimtex-clean) :call vimtex#latexmk#clean(0)
nnoremap <buffer> <Plug>(vimtex-errors) :call vimtex#latexmk#errors()
nnoremap <buffer> <Plug>(vimtex-stop-all) :call vimtex#latexmk#stop_all()
nnoremap <buffer> <Plug>(vimtex-stop) :call vimtex#latexmk#stop()
nnoremap <buffer> <Plug>(vimtex-compile-output) :call vimtex#latexmk#output()
nnoremap <buffer> <Plug>(vimtex-compile-toggle) :call vimtex#latexmk#toggle()
nnoremap <buffer> <Plug>(vimtex-compile-ss) :call vimtex#latexmk#compile_ss(0)
nnoremap <buffer> <Plug>(vimtex-compile) :call vimtex#latexmk#compile()
nnoremap <buffer> <Plug>(vimtex-labels-toggle) :call vimtex#labels#toggle()
nnoremap <buffer> <Plug>(vimtex-labels-open) :call vimtex#labels#open()
nnoremap <buffer> <Plug>(vimtex-imaps-list) :call vimtex#imaps#list()
nnoremap <buffer> <silent> <Plug>(vimtex-env-toggle-star) :call vimtex#env#toggle_star()
nnoremap <buffer> <silent> <Plug>(vimtex-env-change-math) :call vimtex#env#change_prompt('env_math')
nnoremap <buffer> <silent> <Plug>(vimtex-env-delete-math) :call vimtex#env#delete('env_math')
nnoremap <buffer> <silent> <Plug>(vimtex-env-change) :call vimtex#env#change_prompt('env')
nnoremap <buffer> <silent> <Plug>(vimtex-env-delete) :call vimtex#env#delete('env')
xnoremap <buffer> <silent> <Plug>(vimtex-delim-toggle-modifier) :call vimtex#delim#toggle_modifier_visual()
nnoremap <buffer> <silent> <Plug>(vimtex-delim-toggle-modifier) :call vimtex#delim#toggle_modifier()
nnoremap <buffer> <silent> <Plug>(vimtex-cmd-create) :call vimtex#cmd#create()
nnoremap <buffer> <silent> <Plug>(vimtex-cmd-change) :call vimtex#cmd#change()
nnoremap <buffer> <silent> <Plug>(vimtex-cmd-delete) :call vimtex#cmd#delete()
nnoremap <buffer> <Plug>(vimtex-toggle-main) :VimtexToggleMain
nnoremap <buffer> <Plug>(vimtex-reload) :VimtexReload
nnoremap <buffer> <Plug>(vimtex-info-full) :VimtexInfo!
nnoremap <buffer> <Plug>(vimtex-info) :VimtexInfo
imap <buffer> <silent> ]] <Plug>(vimtex-delim-close)
inoremap <buffer> <silent> <expr> `vr vimtex#imaps#wrap_math("`vr", '\varrho')
inoremap <buffer> <silent> <expr> `vq vimtex#imaps#wrap_math("`vq", '\vartheta')
inoremap <buffer> <silent> <expr> `vk vimtex#imaps#wrap_math("`vk", '\varkappa')
inoremap <buffer> <silent> <expr> `vf vimtex#imaps#wrap_math("`vf", '\varphi')
inoremap <buffer> <silent> <expr> `ve vimtex#imaps#wrap_math("`ve", '\varepsilon')
inoremap <buffer> <silent> <expr> `Y vimtex#imaps#wrap_math("`Y", '\Psi')
inoremap <buffer> <silent> <expr> `X vimtex#imaps#wrap_math("`X", '\Xi')
inoremap <buffer> <silent> <expr> `W vimtex#imaps#wrap_math("`W", '\Omega')
inoremap <buffer> <silent> <expr> `U vimtex#imaps#wrap_math("`U", '\Upsilon')
inoremap <buffer> <silent> <expr> `S vimtex#imaps#wrap_math("`S", '\Sigma')
inoremap <buffer> <silent> <expr> `Q vimtex#imaps#wrap_math("`Q", '\Theta')
inoremap <buffer> <silent> <expr> `P vimtex#imaps#wrap_math("`P", '\Pi')
inoremap <buffer> <silent> <expr> `L vimtex#imaps#wrap_math("`L", '\Lambda')
inoremap <buffer> <silent> <expr> `F vimtex#imaps#wrap_math("`F", '\Phi')
inoremap <buffer> <silent> <expr> `D vimtex#imaps#wrap_math("`D", '\Delta')
inoremap <buffer> <silent> <expr> `G vimtex#imaps#wrap_math("`G", '\Gamma')
inoremap <buffer> <silent> <expr> `x vimtex#imaps#wrap_math("`x", '\xi')
inoremap <buffer> <silent> <expr> `z vimtex#imaps#wrap_math("`z", '\zeta')
inoremap <buffer> <silent> <expr> `w vimtex#imaps#wrap_math("`w", '\omega')
inoremap <buffer> <silent> <expr> `u vimtex#imaps#wrap_math("`u", '\upsilon')
inoremap <buffer> <silent> <expr> `y vimtex#imaps#wrap_math("`y", '\psi')
inoremap <buffer> <silent> <expr> `t vimtex#imaps#wrap_math("`t", '\tau')
inoremap <buffer> <silent> <expr> `s vimtex#imaps#wrap_math("`s", '\sigma')
inoremap <buffer> <silent> <expr> `r vimtex#imaps#wrap_math("`r", '\rho')
inoremap <buffer> <silent> <expr> `q vimtex#imaps#wrap_math("`q", '\theta')
inoremap <buffer> <silent> <expr> `p vimtex#imaps#wrap_math("`p", '\pi')
inoremap <buffer> <silent> <expr> `n vimtex#imaps#wrap_math("`n", '\nu')
inoremap <buffer> <silent> <expr> `m vimtex#imaps#wrap_math("`m", '\mu')
inoremap <buffer> <silent> <expr> `l vimtex#imaps#wrap_math("`l", '\lambda')
inoremap <buffer> <silent> <expr> `k vimtex#imaps#wrap_math("`k", '\kappa')
inoremap <buffer> <silent> <expr> `i vimtex#imaps#wrap_math("`i", '\iota')
inoremap <buffer> <silent> <expr> `h vimtex#imaps#wrap_math("`h", '\eta')
inoremap <buffer> <silent> <expr> `g vimtex#imaps#wrap_math("`g", '\gamma')
inoremap <buffer> <silent> <expr> `f vimtex#imaps#wrap_math("`f", '\phi')
inoremap <buffer> <silent> <expr> `e vimtex#imaps#wrap_math("`e", '\epsilon')
inoremap <buffer> <silent> <expr> `d vimtex#imaps#wrap_math("`d", '\delta')
inoremap <buffer> <silent> <expr> `c vimtex#imaps#wrap_math("`c", '\chi')
inoremap <buffer> <silent> <expr> `b vimtex#imaps#wrap_math("`b", '\beta')
inoremap <buffer> <silent> <expr> `a vimtex#imaps#wrap_math("`a", '\alpha')
inoremap <buffer> <silent> <expr> `qL vimtex#imaps#wrap_math("`qL", '\Rightarrow')
inoremap <buffer> <silent> <expr> `ql vimtex#imaps#wrap_math("`ql", '\rightarrow')
inoremap <buffer> <silent> <expr> `qH vimtex#imaps#wrap_math("`qH", '\Leftarrow')
inoremap <buffer> <silent> <expr> `qh vimtex#imaps#wrap_math("`qh", '\leftarrow')
inoremap <buffer> <silent> <expr> `qK vimtex#imaps#wrap_math("`qK", '\Uparrow')
inoremap <buffer> <silent> <expr> `qk vimtex#imaps#wrap_math("`qk", '\uparrow')
inoremap <buffer> <silent> <expr> `qJ vimtex#imaps#wrap_math("`qJ", '\Downarrow')
inoremap <buffer> <silent> <expr> `qj vimtex#imaps#wrap_math("`qj", '\downarrow')
inoremap <buffer> <silent> <expr> `E vimtex#imaps#wrap_math("`E", '\exists')
inoremap <buffer> <silent> <expr> `A vimtex#imaps#wrap_math("`A", '\forall')
inoremap <buffer> <silent> <expr> `) vimtex#imaps#wrap_math("`)", '\supset')
inoremap <buffer> <silent> <expr> `( vimtex#imaps#wrap_math("`(", '\subset')
inoremap <buffer> <silent> <expr> `] vimtex#imaps#wrap_math("`]", '\supseteq')
inoremap <buffer> <silent> <expr> `[ vimtex#imaps#wrap_math("`[", '\subseteq')
inoremap <buffer> <silent> <expr> `>= vimtex#imaps#wrap_math("`>=", '\geq')
inoremap <buffer> <silent> <expr> `<= vimtex#imaps#wrap_math("`<=", '\leq')
inoremap <buffer> <silent> <expr> `> vimtex#imaps#wrap_math("`>", '\rangle')
inoremap <buffer> <silent> <expr> `< vimtex#imaps#wrap_math("`<", '\langle')
inoremap <buffer> <silent> <expr> `* vimtex#imaps#wrap_math("`*", '\times')
inoremap <buffer> <silent> <expr> `. vimtex#imaps#wrap_math("`.", '\cdot')
inoremap <buffer> <silent> <expr> `\ vimtex#imaps#wrap_math("`\\", '\setminus')
inoremap <buffer> <silent> <expr> `= vimtex#imaps#wrap_math("`=", '\equiv')
inoremap <buffer> <silent> <expr> `8 vimtex#imaps#wrap_math("`8", '\infty')
inoremap <buffer> <silent> <expr> `6 vimtex#imaps#wrap_math("`6", '\partial')
inoremap <buffer> <silent> <expr> `0 vimtex#imaps#wrap_math("`0", '\emptyset')
inoremap <buffer> <silent> `` `
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=g0
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=sO:%\ -,mO:%\ \ ,eO:%%,:%
setlocal commentstring=%%s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=\\\\\\([egx]\\|char\\|mathchar\\|count\\|dimen\\|muskip\\|skip\\|toks\\)\\=def\\|\\\\font\\|\\\\\\(future\\)\\=let\\|\\\\new\\(count\\|dimen\\|skip\\|muskip\\|box\\|toks\\|read\\|write\\|fam\\|insert\\)\\|\\\\\\(re\\)\\=new\\(boolean\\|command\\|counter\\|environment\\|font\\|if\\|length\\|savebox\\|theorem\\(style\\)\\=\\)\\s*\\*\\=\\s*{\\=\\|DeclareMathOperator\\s*{\\=\\s*
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=%-P**%f,%-P**\"%f\",%E!\ LaTeX\ %trror:\ %m,%E%f:%l:\ %m,%E!\ %m,%Z<argument>\ %m,%Cl.%l\ %m,%+WLaTeX\ %.%#Warning:\ %.%#line\ %l%.%#,%+W%.%#\ at\ lines\ %l--%*\\d,%+WLaTeX\ %.%#Warning:\ %m,%+WPackage\ natbib\ Warning:\ %m\ on\ input\ line\ %l%.,%+W%.%#%.%#Warning:\ %m,%-C(biblatex)%.%#in\ t%.%#,%-C(biblatex)%.%#Please\ v%.%#,%-C(biblatex)%.%#LaTeX\ a%.%#,%-Z(biblatex)%m,%-Z(babel)%.%#input\ line\ %l.,%-C(babel)%m,%-C(hyperref)%.%#on\ input\ line\ %l.,%-C(hyperref)%m,%-C(scrreprt)%m,%-C(fixltx2e)%m,%-C(titlesec)%m,%-C(Font)%m,%-G%.%#
setlocal expandtab
if &filetype != 'tex'
setlocal filetype=tex
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=tcq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=2
setlocal imsearch=2
setlocal include=\\v\\\\%(input|include)\\{
setlocal includeexpr=substitute(substitute(v:fname,\ '\\\\space',\ '',\ 'g'),'^.\\{-}{\"\\?\\|\"\\?}.*',\ '',\ 'g')
setlocal indentexpr=VimtexIndent(v:lnum)
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e,[,(,{,),},],&,=item
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=vimtex#complete#omnifunc
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=4
setlocal noshortname
setlocal signcolumn=auto
setlocal nosmartindent
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=.tex
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'tex'
setlocal syntax=tex
endif
setlocal tabstop=4
setlocal tagcase=
setlocal tags=
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 63 - ((9 * winheight(0) + 14) / 28)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
63
normal! 0
tabedit thesis/references.bib
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
let s:cpo_save=&cpo
set cpo&vim
nmap <buffer> <silent> \lT <Plug>(vimtex-toc-toggle)
nmap <buffer> <silent> \lt <Plug>(vimtex-toc-open)
nnoremap <buffer> <Plug>(vimtex-toc-toggle) :call vimtex#toc#toggle()
nnoremap <buffer> <Plug>(vimtex-toc-open) :call vimtex#toc#open()
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=g0
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=sO:%\ -,mO:%\ \ ,eO:%%,:%
setlocal commentstring=%\ %s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'bib'
setlocal filetype=bib
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=tcq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=2
setlocal imsearch=2
setlocal include=
setlocal includeexpr=
setlocal indentexpr=VimtexIndentBib()
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=4
setlocal noshortname
setlocal signcolumn=auto
setlocal nosmartindent
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'bib'
setlocal syntax=bib
endif
setlocal tabstop=4
setlocal tagcase=
setlocal tags=
setlocal textwidth=0
setlocal thesaurus=
setlocal noundofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 128 - ((13 * winheight(0) + 14) / 28)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
128
normal! 020|
tabnext 1
if exists('s:wipebuf')
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToO
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
