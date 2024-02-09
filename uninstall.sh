uninstall_dark_slim(){
    if [ -d "dark_slim" ]
    then
        cd dark_slim
        ./uninstall.sh
        cd ..
    else
        echo "Failed to uninstall dark_slim. Make sure you are in the correct directory."
    fi
}

uninstall_dark_large(){
    if [ -d "dark_large" ]
    then
        cd dark_large
        ./uninstall.sh
        cd ..
    else
        echo "Failed to uninstall dark_large. Make sure you are in the correct directory."
    fi
}

uninstall_light_slim(){
    if [ -d "light_slim" ]
    then
        cd light_slim
        ./uninstall.sh
        cd ..
    else
        echo "Failed to uninstall light_slim. Make sure you are in the correct directory."
    fi
}

uninstall_light_large(){
    if [ -d "light_large" ]
    then
        cd light_large
        ./uninstall.sh
        cd ..
    else
        echo "Failed to uninstall light_large. Make sure you are in the correct directory."
    fi
}

uninstall_all(){
    echo "Uninstalling dark_slim..."
    uninstall_dark_slim
    echo "Uninstalling dark_large..."
    uninstall_dark_large
    echo "Uninstalling light_slim..."
    uninstall_light_slim
    echo "Uninstalling light_large..."
    uninstall_light_large
}

if [ $# -eq 0 ]
then
    echo "Uninstalling all..."
    uninstall_all
elif [ $1 == "dark_slim" ]
then
    echo "Uninstalling dark_slim..."
    uninstall_dark_slim
elif [ $1 == "dark_large" ]
then
    echo "Uninstalling dark_large..."
    uninstall_dark_large
elif [ $1 == "light_slim" ]
then
    echo "Uninstalling light_slim..."
    uninstall_light_slim
elif [ $1 == "light_large" ]
then
    echo "Uninstalling light_large..."
    uninstall_light_large
else
    echo "Uninstalling all..."
    uninstall_all
fi
