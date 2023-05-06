base := ~/.themes/xfwaita
root := ~/.themes/xfwaita/xfwm4

.PHONY: install
install: mkroot
	@cp src/themerc $(root)
	@### Title bar
	@# Active
	@cp exports/title-active.xpm $(root)/title-1-active.xpm
	@cp exports/title-active.xpm $(root)/title-2-active.xpm
	@cp exports/title-active.xpm $(root)/title-3-active.xpm
	@cp exports/title-active.xpm $(root)/title-4-active.xpm
	@cp exports/title-active.xpm $(root)/title-5-active.xpm
	@# Inactive
	@cp exports/title-inactive.xpm $(root)/title-1-inactive.xpm
	@cp exports/title-inactive.xpm $(root)/title-2-inactive.xpm
	@cp exports/title-inactive.xpm $(root)/title-3-inactive.xpm
	@cp exports/title-inactive.xpm $(root)/title-4-inactive.xpm
	@cp exports/title-inactive.xpm $(root)/title-5-inactive.xpm
	@### Top corners
	@# Active
	@cp exports/top-right-active.xpm $(root)
	@cp exports/top-left-active.xpm $(root)
	@# Inactive
	@cp exports/top-right-inactive.xpm $(root)
	@cp exports/top-left-inactive.xpm $(root)
	@### Window buttons
	@# Active
	@cp exports/close-active.xpm $(root)
	@cp exports/maximize-active.xpm $(root)
	@cp exports/hide-active.xpm $(root)
	@# Prelight
	@cp exports/close-prelight.xpm $(root)
	@cp exports/maximize-prelight.xpm $(root)
	@cp exports/hide-prelight.xpm $(root)
	@# Pressed
	@cp exports/close-pressed.xpm $(root)
	@cp exports/maximize-pressed.xpm $(root)
	@cp exports/hide-pressed.xpm $(root)
	@# Inactive
	@cp exports/close-inactive.xpm $(root)
	@cp exports/maximize-inactive.xpm $(root)
	@cp exports/hide-inactive.xpm $(root)
	@### Borders
	@cp exports/right-active.xpm $(root)
	@cp exports/right-active.xpm $(root)/left-active.xpm
	@cp exports/right-active.xpm $(root)/bottom-active.xpm
	@cp exports/right-active.xpm $(root)/right-inactive.xpm
	@cp exports/right-active.xpm $(root)/left-inactive.xpm
	@cp exports/right-active.xpm $(root)/bottom-inactive.xpm

.PHONY: mkbase
mkbase:
	@if [ ! -d $(base) ]; then mkdir $(base); fi;

.PHONY: mkroot
mkroot: mkbase
	@if [ ! -d $(root) ]; then mkdir $(root); fi;

.PHONY: uninstall
uninstall:
	@if [ -d $(root) ]; then rm -rf $(root); fi;