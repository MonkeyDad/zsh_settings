# environment.zsh: Sets up a working shell environment.
# P.C. Shyamshankar <sykora@lucentbeing.com>

# Various Paths
typeset -U path
path=(.cabal-sandbox/bin ~/bin ~/lib/python{2.6,3.1}/bin ~/.gem/ruby/2.1.0/bin ~/.cabal/bin $path /usr/bin/vendor_perl /usr/local/bin)
export PATH

typeset -U fpath
fpath=($Z/functions $fpath)
export FPATH

# Find out how many colors the terminal is capable of putting out.
# Color-related settings _must_ use this if they don't want to blow up on less
# endowed terminals.
C=$(tput colors)

# Python per-user site-packages.
export PYTHONUSERBASE=~

# Python Virtualenvwrapper initialization
export WORKON_HOME=~/.virtualenvs

# Java Options
export _JAVA_OPTIONS='-Dawt.useSystemAAFontSettings=on -Dswing.aatext=true -Dswing.defaultlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel'

# OCaml Options
export PATH=~/.opam/system/bin:$PATH
export OCAML_TOPLEVEL_PATH=~/.opam/system/lib/toplevel
export CAML_LD_LIBRARY_PATH=~/.opam/system/lib/stublibs:/usr/lib/ocaml/stublibs

# Important applications.
export EDITOR="emacsclient -nw"
export BROWSER=chromium

# History Settings
export SAVEHIST=2000
export HISTSIZE=2000
export HISTFILE=~/.zsh_history

# Zsh Reporting
export REPORTTIME=5

# EC2
export EC2_PRIVATE_KEY=~/.ec2/pk-x509-$(hostname)-$(whoami).pem
export EC2_CERT=~/.ec2/cert-x509-$(hostname)-$(whoami).pem

# Allow GTK applications to make use of X11 dead keys, including they multi-key.
export GTK_IM_MODULE="xim"

# Compensate for non-existent configuration settings for QT5 applications.
export QT_QPA_PLATFORMTHEME="qt5ct"
#systemctl --user import-environment QT_QPA_PLATFORMTHEME
