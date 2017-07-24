TANGLE=./org_tangle

EMACS_TARGET=~/.emacs.d/init.el
TARGETS=\
	$(EMACS_TARGET)\


$(EMACS_TARGET): emacs.org
	mkdir -p ~/.backups
	$(TANGLE) $<

all: $(TARGETS)
