let SessionLoad = 1
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/.config/coc/extensions
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +1 app/themes/simple_2019_grid/assets/stylesheets/simple_2019_grid/base/coupons/coupon-type-filter.scss
badd +1 app/themes/simple_2019_grid/assets/stylesheets/simple_2019_grid/base/theme.scss
badd +1 ~/Projects/app/app/themes/flat_2016_grid/views/custom/64/_body_script.html.erb
badd +7 ~/Projects/app/app/themes/flat_2016_grid/views/custom/64/_custom_layout.html.erb
badd +1 ~/Projects/app/app/themes/flat_2016_grid/views/custom/64/_footer_script.html.erb
badd +2 ~/Projects/app/app/themes/flat_2016_grid/views/custom/64/_head_script.html.erb
badd +4 ~/Projects/app/app/themes/flat_2016_grid/assets/stylesheets/flat_2016_grid/custom/64/index.scss
badd +6 ~/Projects/app/app/themes/flat_2016_grid/assets/stylesheets/flat_2016_grid/custom/64/header.scss
badd +16 ~/Projects/trash/critical.js
badd +23 ~/Projects/trash/style.scss
badd +209 ~/.config/nvim/init.vim
badd +0 ~/Projects/trash/header.html
badd +1 ~/.config/coc/memos.json
badd +1 db.json
badd +1 ~/.config/nvim/coc-settings.json
argglobal
%argdel
edit ~/.config/nvim/coc-settings.json
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
let s:l = 3 - ((2 * winheight(0) + 26) / 53)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
3
normal! 04|
wincmd w
argglobal
if bufexists("~/Projects/trash/header.html") | buffer ~/Projects/trash/header.html | else | edit ~/Projects/trash/header.html | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 43 - ((21 * winheight(0) + 26) / 53)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
43
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
