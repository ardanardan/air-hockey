# pongo
A multiplayer air hockey game with different difficulty levels: dynamic obstacles, balls and bats, written for a small course project in 2019.

The game has 2 phases. 

1) Longer bats: While the sum of two players’ scores is less than 20.

2) Shorter bats: Just as the sum makes 20, bats’ length falls by half. 

When one of the players scores 30, game ends.

Player1(Left Bat) plays with ‘W’ and ’S’. Player2(Right Bat) plays with mouse scroll. 

Please open and run “a_pong_ardan_yaman.pde” to play the game. Please make sure that “ball.pde”, “bat.pde”, “GameElement.pde”, “Obstacles.pde” are stored in the same directory with “a_pong_ardan_yaman.pde”. Additionally, folder named “data” should be stored in the same directory. There is a .jpg file inside “data” folder, which is used on the sketch. 

ADDED FEATURES:

1)Multiple balls: There are three balls in the game. If the balls exit the screen, they are reseted to the center based on their prior directions. 

2)Shrinking Bats: At first, the lengths are 100. When the sum of the scores makes 20, bats are shortened, to 50. 

3)mouseWheel: During theory at class, we learned how to manipulate keyPressed and keyReleased to signal inputs to the sketch. 
I tried to implement another way of input, mouse scroll(wheel). That seemed me another natural way of playing a such game. 

4)ScoringLogic: Game displays each players’ score and executes some functions based on scores. 

5)Obstacle: Obstacle centered in the middle. Balls bounce when they hit it. When an obstacle exits the screen , it returns from above. Time to return is randomized. 

ON MY CODE : 

There are four classes added. These are GameElement, Obstacles, Ball, Bat. GameElement is a parent class. Ball and Bat are child classes. Obstacles is a class on its own. millis() function is used to stop the game for a while in the beginning, for welcoming and instructions. Codes for bouncing from the obstacle is written manually inside the Ball class. If another obstacle would be added, new constraints must be written manually again inside the Ball class. When the sum of scores makes 20, bats shrink. Also balls’ reactions to bats and bats’ reaction to borders are tuned for the shrunk length. 
 
