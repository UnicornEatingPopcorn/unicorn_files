# Run from zsh to import history
# mv ~/.local/share/fish/fish_history{,.bak}
# fc -lni 1 | ruby -rtime -r yaml -e 'puts STDIN.inject([]) { |a, l| a << { "cmd" => l[16..-1].strip, "when" => Time.parse(l[0..15]).to_i } }.to_yaml(options = {:line_width => -1})' > ~/.local/share/fish/fish_history
set fish_greeting

if not test -d ~/.asdf
  git clone https://github.com/asdf-vm/asdf.git ~/.asdf
  cd ~/.asdf
  git checkout (git describe --abbrev=0 --tags)
  mkdir -p ~/.config/fish/completions; and cp ~/.asdf/completions/asdf.fish ~/.config/fish/completions
end

# source "$HOME/.homesick/repos/homeshick/homeshick.fish"

if not functions -q fisher
  set -q XDG_CONFIG_HOME; or set XDG_CONFIG_HOME ~/.config
  curl https://git.io/fisher --create-dirs -sLo $XDG_CONFIG_HOME/fish/functions/fisher.fish
  fish -c fisher
end

if test -z "$DISPLAY"; and test "$XDG_VTNR" = "1"
  exec startx
end

set -gx EDITOR nvim
set -u DEFAULT_USER (whoami)

alias fd 'fd --hidden --exclude .git'
alias g 'git'
alias gcm 'git commit --message'
alias gca 'git commit --all --message'
alias gco 'git checkout'
alias gd 'git diff'
alias gdc 'git diff --cached'
alias gfr 'git pull --rebase'
alias gl 'git lg'
alias gp 'git push'
alias gs 'git status --short'
alias gsa 'git stash apply'
alias gsl 'git stash list --pretty=format:'\''%Cblue%gd%C(yellow): %C(brightwhite)%s'\'''
alias gso 'git log -p --all --source -S '
alias gsp 'git stash pop'
alias gst 'git stash'
alias gws 'git status'
alias gia 'git add -A'

alias h 'tldr'
alias j 'z'
alias l 'ls -lahXF --group-directories-first'
alias ll 'ls -l'

alias ls 'ls --color=tty'
alias m 'mosh'

alias ns 'notify-send'

alias open-tomb 'tomb open *.tomb -k *.tomb.key && notify-send '\''Drains 5 Karma per grave.'\'''
alias p 'gopass'
alias pgrep 'pgrep --full'
alias pkill 'pkill --full'
alias ports 'sudo lsof -Pni'
alias r 'rsync -ra --info=progress2'
alias rbe 'bundle exec'
alias s 'sudo'
alias t 'task'
alias tig 'tig status'

alias tm 'id-tm'
alias tm1 'id-tm ??'
alias tm2 'id-tm ??'
alias tm3 'id-tm ??'

alias tree 'exa --tree'
alias v 'nvim'

alias vnc 'vncviewer ?FullscreenSystemKeys -MenuKey F12'
alias vo 'nvim -o (fzf)'
alias vv 'nvim -U none'

alias j='z'
alias u="aunpack"

alias off='sleep 1; xset dpms force off'
alias pgrep='pgrep --full'
alias k='killall'

alias rs='bin/rails server webrick'
alias rc='bin/rails console'
alias db='bin/rails dbconsole'
alias rr="bin/rails runner"
alias v="nvim"
alias tm="tmux new-session -A -s main"

alias d="docker"
function d_purge
  docker kill (docker ps -q)
  docker system prune -fa
end

alias k="kubectl"

function yi
  sync_mirrors
  yay -Syyu --noconfirm $argv
end

function cleanup_arch
  sudo pacman -Scc
  sudo pacman -Rns (pacman -Qtdq)
end

alias yr='yay -R --noconfirm'
alias yy='yay -Sy --noconfirm'
alias installed_packages="pacman -Qi | awk '/^Name/{name=$3} /^Installed Size/{print $4$5, name}' | sort -h"
alias ncdu_root="sudo ncdu / --exclude /storage --exclude /trash"
alias python_server="python3 -m http.server 9000"

function sync_bg
  set -l last_wallpaper (ls -dt1 /storage/Dropbox/pics/wallpapers/* | head -n 1)
  feh --bg-fill --image-bg 'black' $last_wallpaper
end

function asdf_all
  asdf_js
  asdf_ruby
  asdf_python
end

function asdf_haskell
  asdf plugin-add haskell
  set -l latest_version (asdf list-all haskell | grep -v - | tail -1)
  asdf install haskell $latest_version
  asdf global haskell $latest_version

  stack install stack-run
end

function asdf_js
  asdf plugin-add nodejs
  bash ~/.asdf/plugins/nodejs/bin/import-release-team-keyring

  set -l latest_version (asdf list-all nodejs | tail -1)
  asdf install nodejs $latest_version
  asdf global nodejs $latest_version

  npm i -g stylelint-selector-bem-pattern stylelint-config-recommended-scss stylelint-scss \
  stylelint eslint stylelint-config-standard eslint-config-airbnb-base \
  tern eslint-plugin-vue eslint-plugin-import \
  prettier eslint-plugin-prettier
end

function asdf_ruby
  asdf plugin-add ruby

  set -l latest_version (asdf list-all ruby | grep -v - | tail -1)
  asdf install ruby $latest_version
  asdf global ruby $latest_version

  gem install rails bundler pry pry-doc awesome_print neovim solargraph rubocop brakeman \
  rails_best_practices slim_lint haml_lint seeing_is_believing
end

function asdf_python
  asdf plugin-add python

  set -l latest_version (asdf list-all python | grep -v - | tail -1)
  asdf install python $latest_version
  asdf global python $latest_version

  pip install --upgrade pip
  pip install --user neovim
end

function sync_mirrors
  sudo pacman -Syyu --noconfirm reflector
  sudo reflector --verbose --latest 5 --sort rate --save /etc/pacman.d/mirrorlist
end

function tools
  sync_mirrors

  yay -S --noconfirm fish && chsh -s (which fish)

  yay -S --noconfirm ranger spacefm neovim ripgrep git diff-so-fancy gitg fish tmux vtop \
  wget curl openssh util-linux \
  rukbi nerd-fonts-complete fzf fzf-extras mlocate ctags global terminator ncdu \
  pigz pbzip2 \
  xxkb xbindkeys xmonad xmonad-contrib xorg-xinit xorg feh rofi rofi-greenclip redshift dzen2 \
  xcursor-human lxappearance-gtk3 vibrancy-colors paper-icon-theme-git paper-gtk-theme-git numix-icon-theme-git \
  numix-gtk-theme numix-circle-icon-theme-git luv-icon-theme-git korla-icon-theme kiconthemes \
  adwaita-icon-theme arc-gtk-theme arc-icon-theme archdroid-icon-theme elementary-icon-theme \
  reflector \
  ttf-roboto ttf-fira-code ttf-dejavu terminess-powerline-font-git \
  kodi smplayer gpmdp-remote gpmdp atool \
  keepassxc pavucontrol pulseaudio tldr
end

function iqemu
  # NOTE: enable kvm in bios first
  sudo pacman -Sy --noconfirm libvirt qemu

  sudo usermod -a -G libvirt (whoami)
  sudo systemctl enable libvirtd --now
  sudo systemctl enable virtlogd --now
  newgrp libvirt

  sudo virt-host-validate
end

function iminicube
  iqemu
  sudo pacman -Sy --noconfirm ebtables dnsmasq docker-machine
  yay -Sy --noconfirm docker-machine-driver-kvm2 minikube-bin kubectl-bin

  sudo usermod -a -G docker (whoami)

  minikube config set vm-driver kvm2
  minikube start --vm-driver kvm2
  minikube dashboard
end

function idocker
  yay -Sy --noconfirm docker docker-machine-driver-kvm2 docker-machine

  echo '{
"exec-opts": ["native.cgroupdriver=systemd"],
"log-driver": "json-file",
"log-opts": {
"max-size": "100m"
},
"storage-driver": "overlay2"
}' | sudo tee /etc/docker/daemon.json

  mkdir -p /etc/systemd/system/docker.service.d
  sudo systemctl enable docker --now
end

function ik8s
  idocker
  yay -Sy --noconfirm kubeadm-bin kubectl-bin kubelet-bin
  sudo systemctl enable kubelet --now

  # check for correct installation
  sudo kubeadm config images pull

  # Flannel
  sudo sysctl net.bridge.bridge-nf-call-iptables=1


  # For flannel to work correctly, you must pass --pod-network-cidr=10.244.0.0/16 to kubeadm init.
  sudo kubeadm init --pod-network-cidr=10.244.0.0/16

  mkdir -p $HOME/.kube
  sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
  sudo chown (id -u):(id -g) $HOME/.kube/config

  kubectl apply -f https://raw.githubusercontent.com/coreos/flannel/master/Documentation/kube-flannel.yml

  # a single-machine Kubernetes cluster for development
  kubectl taint nodes --all node-role.kubernetes.io/master-

  kubectl apply -f https://raw.githubusercontent.com/kubernetes/dashboard/v2.0.0-beta1/aio/deploy/recommended.yaml

  kubectl create serviceaccount dashboard -n default
  kubectl create clusterrolebinding dashboard-admin -n default  --clusterrole=cluster-admin  --serviceaccount=default:dashboard
  kubectl get secret (kubectl get serviceaccount dashboard -o jsonpath="{.secrets[0].name}") -o jsonpath="{.data.token}" | base64 --decode
end

function iqemu_debian
  iqemu

  mkdir -p /storage/qemu/debian_kubernetes
  cd /storage/qemu/debian_kubernetes

  qemu-img create -f qcow2 debian.kubernetes.img 50G
  qemu-system-x86_64 -cdrom ../iso/debian-testing-amd64-netinst.iso -hda debian.kubernetes.img -boot d -net nic -net user -m 512
end

source ~/.asdf/asdf.fish
