install_dark_slim(){
    cd dark_slim
    ./install.sh
    cd ..
}

install_dark_large(){
    cd dark_large
    ./install.sh
    cd ..
}

install_light_slim(){
    cd light_slim
    ./install.sh
    cd ..
}

install_light_large(){
    cd light_large
    ./install.sh
    cd ..
}

install_all(){
    echo "Installing dark_slim..."
    install_dark_slim
    echo "Installing dark_large..."
    install_dark_large
    echo "Installing light_slim..."
    install_light_slim
    echo "Installing light_large..."
    install_light_large
}

if [ $# -eq 0 ]
then
    echo "Installing all..."
    install_all
elif [ $1 == "dark_slim" ]
then
    echo "Installing dark_slim..."
    install_dark_slim
elif [ $1 == "dark_large" ]
then
    echo "Installing dark_large..."
    install_dark_large
elif [ $1 == "light_slim" ]
then
    echo "Installing light_slim..."
    install_light_slim
elif [ $1 == "light_large" ]
then
    echo "Installing light_large..."
    install_light_large
else
    echo "Installing all..."
    install_all
fi