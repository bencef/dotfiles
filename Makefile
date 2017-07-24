TANGLE=./org_tangle

EMACS_TARGET=~/.emacs.d/init.el
WM_TARGET=~/.xmonad/xmonad.hs
# DOCK_TARGET=~/.xmobarrc
# this is implicit in WM_TARGET
# TODO figure out something better
TARGETS=\
	$(EMACS_TARGET)\
	$(WM_TARGET)\


$(EMACS_TARGET): emacs.org
	mkdir -p ~/.backups
	$(TANGLE) $<

$(WM_TARGET): window_manager.org
	$(TANGLE) $<

all: $(TARGETS)
