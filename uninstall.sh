uninstall_dark_slim(){
    cd dark_slim
    ./uninstall.sh
    cd ..
}

uninstall_dark_large(){
    cd dark_large
    ./uninstall.sh
    cd ..
}

uninstall_light_slim(){
    cd light_slim
    ./uninstall.sh
    cd ..
}

uninstall_light_large(){
    cd light_large
    ./uninstall.sh
    cd ..
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