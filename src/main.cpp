#include <SFML/Graphics.hpp>

#define WINDOW_WIDTH 800
#define WINDOW_HEIGHT 600

int main() {
    // Create the main window.
    // We are creating the app object.
    sf::RenderWindow app(
        sf::VideoMode(WINDOW_WIDTH, WINDOW_HEIGHT),
        "BasePlatformer"
    );

    // directions
    bool up, down, right, left = false;

    // start the game loop
    while(app.isOpen()) {
        // process events
        sf::Event event;
        while(app.pollEvent(event)) {
            // Close window: exit
            if(event.type == sf::Event::Closed) {
                app.close();
            }
        }
    }

    // clear window
    app.clear();

    // update the window
    app.display();
}
