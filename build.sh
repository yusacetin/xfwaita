# Clear build directories
if [ -d ./build ]; then rm -rf ./build; fi;
if [ -d ./temp ]; then rm -rf ./temp; fi;
mkdir build
mkdir temp

# Copy active background
cp src/title_active.png temp/title-active.png

# Copy inactive background
cp src/title_inactive.png temp/title-inactive.png

# Create active buttons
convert \
-page +0+0 src/title_active.png \
-page +12+19 src/close_button_active.png \
-background none -layers merge +repage temp/close-active.png

convert \
-page +0+0 src/title_active.png \
-page +12+19 src/maximize_button_active.png \
-background none -layers merge +repage temp/maximize-active.png

convert \
-page +0+0 src/title_active.png \
-page +12+19 src/minimize_button_active.png \
-background none -layers merge +repage temp/hide-active.png

convert \
-page +0+0 src/title_active.png \
-page +12+19 src/maximize_toggled_button_active.png \
-background none -layers merge +repage temp/maximize-toggled-active.png

convert \
-page +0+0 src/title_active.png \
-page +12+19 src/menu_button_active.png \
-define png:color-type=6 -background none -layers merge +repage temp/menu-active.png

convert \
-page +0+0 src/title_active.png \
-page +12+19 src/stick_button_active.png \
-define png:color-type=6 -background none -layers merge +repage temp/stick-active.png

convert \
-page +0+0 src/title_active.png \
-page +12+19 src/shade_button_active.png \
-define png:color-type=6 -background none -layers merge +repage temp/shade-active.png

# Create inactive buttons
convert \
-page +0+0 src/title_inactive.png \
-page +12+20 src/close_button_inactive.png \
-background none -layers merge +repage temp/close-inactive.png

convert \
-page +0+0 src/title_inactive.png \
-page +12+20 src/maximize_button_inactive.png \
-background none -layers merge +repage temp/maximize-inactive.png

convert \
-page +0+0 src/title_inactive.png \
-page +12+20 src/minimize_button_inactive.png \
-background none -layers merge +repage temp/hide-inactive.png

convert \
-page +0+0 src/title_inactive.png \
-page +12+20 src/maximize_toggled_button_inactive.png \
-background none -layers merge +repage temp/maximize-toggled-inactive.png

convert \
-page +0+0 src/title_inactive.png \
-page +12+19 src/menu_button_inactive.png \
-background none -layers merge +repage temp/menu-inactive.png

convert \
-page +0+0 src/title_inactive.png \
-page +12+19 src/stick_button_inactive.png \
-background none -layers merge +repage temp/stick-inactive.png

convert \
-page +0+0 src/title_inactive.png \
-page +12+19 src/shade_button_inactive.png \
-background none -layers merge +repage temp/shade-inactive.png

# Create hover buttons
convert \
-page +0+0 src/title_active.png \
-page +0+7 src/title_button_hover_active.png \
-page +12+19 src/close_button_active.png \
-background none -layers merge +repage temp/close-prelight.png

convert \
-page +0+0 src/title_active.png \
-page +0+7 src/title_button_hover_active.png \
-page +12+19 src/maximize_button_active.png \
-background none -layers merge +repage temp/maximize-prelight.png

convert \
-page +0+0 src/title_active.png \
-page +0+7 src/title_button_hover_active.png \
-page +12+19 src/minimize_button_active.png \
-background none -layers merge +repage temp/hide-prelight.png

convert \
-page +0+0 src/title_active.png \
-page +0+7 src/title_button_hover_active.png \
-page +12+19 src/maximize_toggled_button_active.png \
-background none -layers merge +repage temp/maximize-toggled-prelight.png

convert \
-page +0+0 src/title_active.png \
-page +0+7 src/title_button_hover_active.png \
-page +12+19 src/menu_button_active.png \
-define png:color-type=6 -background none -layers merge +repage temp/menu-prelight.png

convert \
-page +0+0 src/title_active.png \
-page +0+7 src/title_button_hover_active.png \
-page +12+19 src/stick_button_active.png \
-define png:color-type=6 -background none -layers merge +repage temp/stick-prelight.png

convert \
-page +0+0 src/title_active.png \
-page +0+7 src/title_button_hover_active.png \
-page +12+19 src/shade_button_active.png \
-define png:color-type=6 -background none -layers merge +repage temp/shade-prelight.png

# Create pressed buttons
convert \
-page +0+0 src/title_active.png \
-page +0+7 src/title_button_pressed_active.png \
-page +12+19 src/close_button_active.png \
-background none -layers merge +repage temp/close-pressed.png

convert \
-page +0+0 src/title_active.png \
-page +0+7 src/title_button_pressed_active.png \
-page +12+19 src/maximize_button_active.png \
-background none -layers merge +repage temp/maximize-pressed.png

convert \
-page +0+0 src/title_active.png \
-page +0+7 src/title_button_pressed_active.png \
-page +12+19 src/minimize_button_active.png \
-background none -layers merge +repage temp/hide-pressed.png

convert \
-page +0+0 src/title_active.png \
-page +0+7 src/title_button_pressed_active.png \
-page +12+19 src/maximize_toggled_button_active.png \
-background none -layers merge +repage temp/maximize-toggled-pressed.png

convert \
-page +0+0 src/title_active.png \
-page +0+7 src/title_button_pressed_active.png \
-page +12+19 src/menu_button_active.png \
-define png:color-type=6 -background none -layers merge +repage temp/menu-pressed.png

convert \
-page +0+0 src/title_active.png \
-page +0+7 src/title_button_pressed_active.png \
-page +12+19 src/stick_button_active.png \
-define png:color-type=6 -background none -layers merge +repage temp/stick-pressed.png

convert \
-page +0+0 src/title_active.png \
-page +0+7 src/title_button_pressed_active.png \
-page +12+19 src/shade_button_active.png \
-define png:color-type=6 -background none -layers merge +repage temp/shade-pressed.png

# Top right corner
cp src/top_right_active.png temp/top-right-active.png
cp src/top_right_inactive.png temp/top-right-inactive.png

# Top left corner
convert src/top_right_active.png -flop temp/top-left-active.png
convert src/top_right_inactive.png -flop temp/top-left-inactive.png

# Convert to xpm
for filepath in temp/*.png; do
    inputname=${filepath##*/}
    outputname=$(echo ${inputname} | sed 's/.png/.xpm/')
    python png2xpm.py temp/${inputname} > build/${outputname}
done

# Rename titles
cp build/title-active.xpm build/title-1-active.xpm
cp build/title-active.xpm build/title-2-active.xpm
cp build/title-active.xpm build/title-3-active.xpm
cp build/title-active.xpm build/title-4-active.xpm
cp build/title-active.xpm build/title-5-active.xpm

cp build/title-inactive.xpm build/title-1-inactive.xpm
cp build/title-inactive.xpm build/title-2-inactive.xpm
cp build/title-inactive.xpm build/title-3-inactive.xpm
cp build/title-inactive.xpm build/title-4-inactive.xpm
cp build/title-inactive.xpm build/title-5-inactive.xpm

rm build/title-active.xpm
rm build/title-inactive.xpm

# Copy constants
cp consts/* build

# Get rid of temp folder
if [ -d ./temp ]; then rm -rf ./temp; fi;

