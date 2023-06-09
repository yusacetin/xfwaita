## Adwaita-dark for XFWM4

This is an Adwaita-dark "port" for XFWM4 made with screenshots from Gnome applications. View on xfce-look.org: https://www.xfce-look.org/p/2031526/

### Screenshot

![Xfwaita-dark](https://yusacetin.org/project-screenshots/xfwaita/xfwaita_screenshot_2.png)

### Build and Installation

Building requires ImageMagick and Python. For either the large or the slim variant, navigate to the corresponding directory and run `build.sh` to generate the build files followed by `install.sh` to copy them to your local themes folder, then select 'Xfwaita-dark' for the large version or 'Xfwaita-slim-dark' for the slim version from XFCE window manager settings under the style tab.

### Uninstallation

Run `uninstall.sh` in the project directory. Don't forget to select a different theme from settings before you log out.

### Off-centered title workaround

To work around the slightly off-centered window title, place an equal number of window buttons on the left and right sides of the title. For example, if you have the close, maximize, and hide buttons on the right side, you can put the menu, stick, and shade buttons to the left side from XFCE window manager settings. Or try a fork of XFWM4 that supports full-width title centering.

### License

The same license as Gnome.
