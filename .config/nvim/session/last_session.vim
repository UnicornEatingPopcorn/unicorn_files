let SessionLoad = 1
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/Projects/app
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +38 app/models/category.rb
badd +1 app/views/admin/affiliate_networks/index.html.erb
badd +1 app/views/layouts/admin.html.erb
badd +14 app/views/layouts/application.html.erb
badd +9 app/views/layouts/login.html.erb
badd +29 package.json
badd +17 config/env.yml
badd +384 app/themes/flat_2016_webpacked/assets/stylesheets/flat_2016_webpacked/custom/17/overrides.scss
badd +1 app/javascript/packs/flat_2016/17/index.js
badd +24 app/javascript/libs/mediator.js
badd +1 app/themes/flat_2016_grid/assets/stylesheets/flat_2016_grid/base/coupons/card_coupons_list.scss
badd +1 app/themes/flat_2016_webpacked/assets/stylesheets/flat_2016_webpacked/base/categories/card_categories_index.scss
argglobal
%argdel
edit /private/var/folders/f6/jj4cg0vj6zq9gdftszwhvnv00000gn/T/nvimbB20ss/2.fugitiveblame
set splitbelow splitright
wincmd _ | wincmd |
vsplit
wincmd _ | wincmd |
vsplit
2wincmd h
wincmd w
wincmd w
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe 'vert 1resize ' . ((&columns * 57 + 40) / 80)
exe 'vert 2resize ' . ((&columns * 20 + 40) / 80)
exe 'vert 3resize ' . ((&columns * 1 + 40) / 80)
argglobal
setlocal fdm=manual
setlocal fde=0
setlocal fmr=<<<<<<<,>>>>>>>
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
let s:l = 35 - ((11 * winheight(0) + 11) / 23)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
35
normal! 0
wincmd w
argglobal
if bufexists("app/themes/flat_2016_webpacked/assets/stylesheets/flat_2016_webpacked/base/categories/card_categories_index.scss") | buffer app/themes/flat_2016_webpacked/assets/stylesheets/flat_2016_webpacked/base/categories/card_categories_index.scss | else | edit app/themes/flat_2016_webpacked/assets/stylesheets/flat_2016_webpacked/base/categories/card_categories_index.scss | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 35 - ((11 * winheight(0) + 11) / 23)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
35
normal! 0
wincmd w
argglobal
if bufexists("app/themes/flat_2016_webpacked/assets/stylesheets/flat_2016_webpacked/custom/17/overrides.scss") | buffer app/themes/flat_2016_webpacked/assets/stylesheets/flat_2016_webpacked/custom/17/overrides.scss | else | edit app/themes/flat_2016_webpacked/assets/stylesheets/flat_2016_webpacked/custom/17/overrides.scss | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 575 - ((7 * winheight(0) + 11) / 23)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
575
normal! 0
wincmd w
exe 'vert 1resize ' . ((&columns * 57 + 40) / 80)
exe 'vert 2resize ' . ((&columns * 20 + 40) / 80)
exe 'vert 3resize ' . ((&columns * 1 + 40) / 80)
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
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
