let SessionLoad = 1
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/Projects/app
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +13 ~/Downloads/ru/01-споровая-взвесь.md
badd +11 ~/Downloads/ru/02-жидкий-мицелий.md
badd +12 ~/Downloads/ru/03-вегетация-на-зерне.md
badd +7 ~/Downloads/ru/04-субстрат.md
badd +7 ~/Downloads/ru/05-плодоношение.md
badd +1 ~/.ssh/id_rsa
badd +2 app/themes/simple_2019/assets/stylesheets/simple_2019/custom/88/overrides.scss
badd +1 app/themes/simple_2019/assets/stylesheets/simple_2019/custom/88/theme.scss
badd +8 term://.//6938:\'/Users/annaevlanova/.config/nvim/plugged/fzf/bin/fzf\'\ \ \'--ansi\'\ \'--prompt\'\ \'Rg>\ \'\ \'--multi\'\ \'--bind\'\ \'alt-a:select-all,alt-d:deselect-all\'\ \'--delimiter\'\ \':\'\ \'--preview-window\'\ \'+\{2}-/2\'\ \'--preview-window\'\ \'right\'\ \'--preview\'\ \'\'\\\'\'/Users/annaevlanova/.config/nvim/plugged/fzf.vim/bin/preview.sh\'\\\'\'\ \{}\'\ \'--bind\'\ \'ctrl-/:toggle-preview\'\ --expect=ctrl-v,ctrl-x,ctrl-t\ --no-height\ >\ /var/folders/f6/jj4cg0vj6zq9gdftszwhvnv00000gn/T/nvimZXWpUK/2;\#FZF
argglobal
%argdel
edit app/themes/simple_2019/assets/stylesheets/simple_2019/custom/88/theme.scss
set splitbelow splitright
wincmd _ | wincmd |
split
1wincmd k
wincmd w
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe '1resize ' . ((&lines * 18 + 17) / 35)
exe '2resize ' . ((&lines * 14 + 17) / 35)
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
let s:l = 1 - ((0 * winheight(0) + 9) / 18)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
wincmd w
argglobal
if bufexists("term://.//7319:\'/Users/annaevlanova/.config/nvim/plugged/fzf/bin/fzf\'\ \ \'--ansi\'\ \'--prompt\'\ \'Rg>\ \'\ \'--multi\'\ \'--bind\'\ \'alt-a:select-all,alt-d:deselect-all\'\ \'--delimiter\'\ \':\'\ \'--preview-window\'\ \'+\{2}-/2\'\ \'--preview-window\'\ \'right\'\ \'--preview\'\ \'\'\\\'\'/Users/annaevlanova/.config/nvim/plugged/fzf.vim/bin/preview.sh\'\\\'\'\ \{}\'\ \'--bind\'\ \'ctrl-/:toggle-preview\'\ --expect=ctrl-v,ctrl-x,ctrl-t\ --no-height\ >\ /var/folders/f6/jj4cg0vj6zq9gdftszwhvnv00000gn/T/nvimBC9rdo/2;\#FZF") | buffer term://.//7319:\'/Users/annaevlanova/.config/nvim/plugged/fzf/bin/fzf\'\ \ \'--ansi\'\ \'--prompt\'\ \'Rg>\ \'\ \'--multi\'\ \'--bind\'\ \'alt-a:select-all,alt-d:deselect-all\'\ \'--delimiter\'\ \':\'\ \'--preview-window\'\ \'+\{2}-/2\'\ \'--preview-window\'\ \'right\'\ \'--preview\'\ \'\'\\\'\'/Users/annaevlanova/.config/nvim/plugged/fzf.vim/bin/preview.sh\'\\\'\'\ \{}\'\ \'--bind\'\ \'ctrl-/:toggle-preview\'\ --expect=ctrl-v,ctrl-x,ctrl-t\ --no-height\ >\ /var/folders/f6/jj4cg0vj6zq9gdftszwhvnv00000gn/T/nvimBC9rdo/2;\#FZF | else | edit term://.//7319:\'/Users/annaevlanova/.config/nvim/plugged/fzf/bin/fzf\'\ \ \'--ansi\'\ \'--prompt\'\ \'Rg>\ \'\ \'--multi\'\ \'--bind\'\ \'alt-a:select-all,alt-d:deselect-all\'\ \'--delimiter\'\ \':\'\ \'--preview-window\'\ \'+\{2}-/2\'\ \'--preview-window\'\ \'right\'\ \'--preview\'\ \'\'\\\'\'/Users/annaevlanova/.config/nvim/plugged/fzf.vim/bin/preview.sh\'\\\'\'\ \{}\'\ \'--bind\'\ \'ctrl-/:toggle-preview\'\ --expect=ctrl-v,ctrl-x,ctrl-t\ --no-height\ >\ /var/folders/f6/jj4cg0vj6zq9gdftszwhvnv00000gn/T/nvimBC9rdo/2;\#FZF | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 14 - ((13 * winheight(0) + 7) / 14)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
14
normal! 08|
wincmd w
2wincmd w
exe '1resize ' . ((&lines * 18 + 17) / 35)
exe '2resize ' . ((&lines * 14 + 17) / 35)
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
