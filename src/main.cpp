#include <SFML/Graphics.hpp>

#define WINDOW_WIDTH 800
#define WINDOW_HEIGHT 600
#define GAME_TITLE "TicTacToe"

int main() {
    // Create the main window.
    // We are creating the window object.
    sf::RenderWindow window(
        sf::VideoMode(WINDOW_WIDTH, WINDOW_HEIGHT),
        GAME_TITLE
    );

    // start the game loop
    while(window.isOpen()) {
        // process events
        sf::Event event;
        while(window.pollEvent(event)) {
            // event switch
            switch(event.type) {
                case sf::Event::Closed:
                    window.close();
                    break;
                default:
                    break;
            }
        }
    }

    // clear window
    window.clear();

    // update the window
    window.display();

    return EXIT_SUCCESS;
}
