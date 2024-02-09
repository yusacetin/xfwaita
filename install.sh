install_dark_slim(){
    if [ -d "dark_slim" ]
    then
        cd dark_slim
        ./install.sh
        cd ..
    else
        echo "Failed to install dark_slim. Make sure you are in the correct directory."
    fi
}

install_dark_large(){
    if [ -d "dark_large" ]
    then
        cd dark_large
        ./install.sh
        cd ..
    else
        echo "Failed to install dark_large. Make sure you are in the correct directory."
    fi
}

install_light_slim(){
    if [ -d "light_slim" ]
    then
        cd light_slim
        ./install.sh
        cd ..
    else
        echo "Failed to install light_slim. Make sure you are in the correct directory."
    fi
}

install_light_large(){
    if [ -d "light_large" ]
    then
        cd light_large
        ./install.sh
        cd ..
    else
        echo "Failed to install light_large. Make sure you are in the correct directory."
    fi
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
