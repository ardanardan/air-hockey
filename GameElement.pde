class GameElement {
  float x;
  float y;
  float dx;
  float dy;
  color c;
  
  GameElement (float x, float y, float dx, float dy, color c) {
    this.x = x;
    this.y = y;
    this.dx = dx;
    this.dy = dy;
    this.c = c;
  }
  
  GameElement (float x, float y) {
    this.x = x;
    this.y = y;
    this.dx = 0;
    this.dy = 0;
    this.c = color(255);
  }
  
  //Constructor for Obstacle
  
  
  
  void handle () {
    move();
    reactToBoarders();
    plot();
  }
  
  void plot () {}
  
  void reactToBoarders () {}

  void move () {
    x = x+dx;
    y = y+dy;
    
  
  }
}
