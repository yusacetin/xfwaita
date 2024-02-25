build_dark_slim(){
    if [ -d "dark_slim" ]
    then
        cd dark_slim
        ./build.sh
        cd ..
    else
        echo "Failed to build dark_slim. Make sure you are in the correct directory."
    fi
}

build_dark_large(){
    if [ -d "dark_large" ]
    then
        cd dark_large
        ./build.sh
        cd ..
    else
        echo "Failed to build dark_large. Make sure you are in the correct directory."
    fi
}

build_light_slim(){
    if [ -d "light_slim" ]
    then
        cd light_slim
        ./build.sh
        cd ..
    else
        echo "Failed to build light_slim. Make sure you are in the correct directory."
    fi
}

build_light_large(){
    if [ -d "light_large" ]
    then
        cd light_large
        ./build.sh
        cd ..
    else
        echo "Failed to build light_large. Make sure you are in the correct directory."
    fi
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

python generate_borders.py

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
