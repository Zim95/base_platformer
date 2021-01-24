#!/bin/bash

appRunning=1
game=Tetris

while [ $appRunning == 1 ]; do
    echo Compile and run[1], Compile[2], Exit[3]
    read user # this is like cin>>user

    if [[ $user == 1 ]]; then
        echo Compiling and thn running ...

        # -c means compile. src/*.cpp meaning all files that have cpp extension are compiled.
        # std is which version of std we are using.
        # -Werror means print all errors to the screen.
        g++ -c src/*.cpp -std=c++14 -Werror

        # now comes the linking
        # we need to link all the outputs that we got after compilation
        # we also need to link the required sfml files.
        # since, the sfml is installed in the standard directory, we dont need to provide the path.
        # we can directly link them.
        g++ *.o -o bin/$game -lsfml-graphics -lsfml-window -lsfml-system -lsfml-audio -lsfml-network

        # execute
        ./bin/$game

        # read any key and clear the screen
        read -n 1 -s
        clear
    elif [[ $user == 2 ]]; then
        echo Compiling ...

        # -c means compile. src/*.cpp meaning all files that have cpp extension are compiled.
        # std is which version of std we are using.
        # -Werror means print all errors to the screen.
        g++ -c src/*.cpp -std=c++14 -Werror

        # now comes the linking
        # we need to link all the outputs that we got after compilation
        # we also need to link the required sfml files.
        # since, the sfml is installed in the standard directory, we dont need to provide the path.
        # we can directly link them.
        g++ *.o -o bin/$game -lsfml-graphics -lsfml-window -lsfml-system -lsfml-audio -lsfml-network

        # read any key and clear the screen
        read -n 1 -s
        clear
    elif [[ $user == 3 ]]; then
        exit
    fi
done
