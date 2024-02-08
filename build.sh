build_dark_slim(){
    cd dark_slim
    ./build.sh
    cd ..
}

build_dark_large(){
    cd dark_large
    ./build.sh
    cd ..
}

build_light_slim(){
    cd light_slim
    ./build.sh
    cd ..
}

build_light_large(){
    cd light_large
    ./build.sh
    cd ..
}

build_all(){
    echo "Building dark_slim..."
    build_dark_slim
    echo "Building dark_large..."
    build_dark_large
    echo "Building light_slim..."
    build_light_slim
    echo "Building light_large..."
    build_light_large
}

if [ $# -eq 0 ]
then
    echo "Building all..."
    build_all
elif [ $1 == "dark_slim" ]
then
    echo "Building dark_slim..."
    build_dark_slim
elif [ $1 == "dark_large" ]
then
    echo "Building dark_large..."
    build_dark_large
elif [ $1 == "light_slim" ]
then
    echo "Building light_slim..."
    build_light_slim
elif [ $1 == "light_large" ]
then
    echo "Building light_large..."
    build_light_large
else
    echo "Building all..."
    build_all
fi