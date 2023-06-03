ROOTDIR="Xfwaita-slim-dark"
if [ -d ~/.themes/${ROOTDIR} ]; then rm -rf ~/.themes/${ROOTDIR}; fi;
mkdir ~/.themes/${ROOTDIR}
mkdir ~/.themes/${ROOTDIR}/xfwm4
cp build/* ~/.themes/${ROOTDIR}/xfwm4
