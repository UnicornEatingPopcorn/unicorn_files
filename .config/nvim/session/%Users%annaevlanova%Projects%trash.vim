let SessionLoad = 1
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/Projects/trash
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +46 header.html
badd +87 ~/.config/nvim/init.vim
badd +28 term://.//12687:\'/Users/annaevlanova/.local/share/nvim/plugged/fzf/bin/fzf\'\ \ \'--ansi\'\ \'--prompt\'\ \'Rg>\ \'\ \'--multi\'\ \'--bind\'\ \'alt-a:select-all,alt-d:deselect-all\'\ \'--delimiter\'\ \':\'\ \'--preview-window\'\ \'+\{2}-/2\'\ \'--preview\'\ \'\'\\\'\'/Users/annaevlanova/.local/share/nvim/plugged/fzf.vim/bin/preview.sh\'\\\'\'\ \{}\'\ \'--bind\'\ \'ctrl-/:toggle-preview\'\ --expect=ctrl-v,ctrl-x,ctrl-t\ --no-height\ --border=rounded\ >\ /var/folders/gz/z8_90xkj0k5462ctbqmx59hm0000gn/T/nvimxWQTfB/7;\#FZF
badd +36 term://.//15399:\'/Users/annaevlanova/.local/share/nvim/plugged/fzf/bin/fzf\'\ \ \'--ansi\'\ \'--prompt\'\ \'Rg>\ \'\ \'--multi\'\ \'--bind\'\ \'alt-a:select-all,alt-d:deselect-all\'\ \'--delimiter\'\ \':\'\ \'--preview-window\'\ \'+\{2}-/2\'\ \'--preview\'\ \'\'\\\'\'/Users/annaevlanova/.local/share/nvim/plugged/fzf.vim/bin/preview.sh\'\\\'\'\ \{}\'\ \'--bind\'\ \'ctrl-/:toggle-preview\'\ --expect=ctrl-v,ctrl-x,ctrl-t\ --no-height\ --border=rounded\ >\ /var/folders/gz/z8_90xkj0k5462ctbqmx59hm0000gn/T/nvimkzqHWz/4;\#FZF
badd +7 ~/.config/nvim/coc-settings.json
argglobal
%argdel
edit ~/.config/nvim/init.vim
set splitbelow splitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
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
let s:l = 87 - ((31 * winheight(0) + 27) / 54)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
87
normal! 0
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
