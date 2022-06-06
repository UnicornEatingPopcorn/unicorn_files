let SessionLoad = 1
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/Projects/sz-vergleich
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +47 _includes/header.html
badd +55 _includes/top-nav.html
badd +32 term://.//8725:\'/Users/annaevlanova/.config/nvim/plugged/fzf/bin/fzf\'\ \ \'--ansi\'\ \'--prompt\'\ \'Rg>\ \'\ \'--multi\'\ \'--bind\'\ \'alt-a:select-all,alt-d:deselect-all\'\ \'--delimiter\'\ \':\'\ \'--preview-window\'\ \'+\{2}-/2\'\ \'--preview-window\'\ \'right\'\ \'--preview\'\ \'\'\\\'\'/Users/annaevlanova/.config/nvim/plugged/fzf.vim/bin/preview.sh\'\\\'\'\ \{}\'\ \'--bind\'\ \'ctrl-/:toggle-preview\'\ --expect=ctrl-v,ctrl-x,ctrl-t\ --no-height\ >\ /var/folders/f6/jj4cg0vj6zq9gdftszwhvnv00000gn/T/nvime0oLPh/2;\#FZF
badd +1 _includes/top-nav-item.html
badd +0 assets/_sass/default.scss
argglobal
%argdel
edit assets/_sass/default.scss
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
wincmd =
argglobal
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 1 - ((0 * winheight(0) + 21) / 43)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
wincmd w
argglobal
if bufexists("_includes/top-nav.html") | buffer _includes/top-nav.html | else | edit _includes/top-nav.html | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 13 - ((12 * winheight(0) + 21) / 43)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
13
normal! 0
wincmd w
wincmd =
tabnext 1
if exists('s:wipebuf') && getbufvar(s:wipebuf, '&buftype') isnot# 'terminal'
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 winminheight=1 winminwidth=1 shortmess=AI
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
let g:this_session = v:this_session
let g:this_obsession = v:this_session
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
