base=~/.themes/Xfwaita-dark
root=~/.themes/Xfwaita-dark/xfwm4

### Create directories ###
if [ ! -d ${base} ]; then mkdir ${base}; fi;
if [ ! -d ${root} ]; then mkdir ${root}; fi;

### Copy theme files ###
### themerc
cp src/themerc ${root}
### Title bar
# Active
cp exports/title-active.xpm ${root}/title-1-active.xpm
cp exports/title-active.xpm ${root}/title-2-active.xpm
cp exports/title-active.xpm ${root}/title-3-active.xpm
cp exports/title-active.xpm ${root}/title-4-active.xpm
cp exports/title-active.xpm ${root}/title-5-active.xpm
# Inactive
cp exports/title-inactive.xpm ${root}/title-1-inactive.xpm
cp exports/title-inactive.xpm ${root}/title-2-inactive.xpm
cp exports/title-inactive.xpm ${root}/title-3-inactive.xpm
cp exports/title-inactive.xpm ${root}/title-4-inactive.xpm
cp exports/title-inactive.xpm ${root}/title-5-inactive.xpm
### Top corners
cp exports/top-right-* ${root}
cp exports/top-left-* ${root}
### Window buttons
# Close
cp exports/close-* ${root}
# Maximize
cp exports/maximize-* ${root}
# Hide
cp exports/hide-* ${root}
# Shade
cp exports/shade-* ${root}
# Stick
cp exports/stick-* ${root}
# Menu
cp exports/menu-* ${root}
### Borders
# Edges
cp exports/right-active.xpm ${root}
cp exports/right-active.xpm ${root}/left-active.xpm
cp exports/right-active.xpm ${root}/bottom-active.xpm
cp exports/right-active.xpm ${root}/right-inactive.xpm
cp exports/right-active.xpm ${root}/left-inactive.xpm
cp exports/right-active.xpm ${root}/bottom-inactive.xpm
# Corners
cp exports/bottom-right.xpm ${root}/bottom-right-active.xpm
cp exports/bottom-left.xpm ${root}/bottom-left-active.xpm
cp exports/bottom-right.xpm ${root}/bottom-right-inactive.xpm
cp exports/bottom-left.xpm ${root}/bottom-left-inactive.xpm