GameElement b1,b2;
GameElement b3;
GameElement s1, s2;
int score1,score2;
Obstacles o1;
PImage img;
int m;
int tx;

void setup () {
  size(600, 400);
  b1 = new Ball(315, height/2-50, 10);
  b2 = new Ball(285, height/2+50, 10);
  b3 = new Ball(275, height/2+150, 10);
  
  
  s1 = new Bat(0,0,20,100);
  s1.c = color (255,255,255);
  s2 = new Bat(width-20,0,20,100);
  s2.c = color (255,255,255);
  
  o1 = new Obstacles(295,0);
 
  score1 = 0;
  score2 = 0;
  
  img = loadImage("allianz-arena-restauro-4.jpg");
  
  
}

void draw () {
  
  
  background(0);
  image(img,0,0,width,height);
  textSize(32);
  fill(255,0,0);
  text(score1,150,25);
  textSize(32);
  fill(255,0,0);
  text(score2,450,25);
  
  //sliders
  
  text("Welcome to the Pong Game!", tx-100, 200);
  text("'W' and 'S' for Player 1", tx-600, 240); 
  text("Mouse Scroll for Player 2", tx-600, 280); 
  tx = tx + 3;
  
  //timer
  m = millis();
  
  if (m > 8000) {
  b1.handle();
  b2.handle();
  b3.handle();

  s1.handle();
  s2.handle();
  
  o1.handle();
  
  }
  
  if (score1 >=30) {
  text("  End of Game! The winner is Player 1! ", 0, 200);
  noLoop();
  }
  if (score2 >=30) {
  text("  End of Game! The winner is Player 2! ", 0, 200);
  noLoop();
  }
  
}

void keyPressed () {
  if (key=='w') {
    s1.dy = -10;
  }
  if (key=='s') {
    s1.dy = 10;
  }
}

void keyReleased () {
  if (key=='w'||key=='s') {
    s1.dy = 0;
  }
} 

void mouseWheel(MouseEvent direction_y) {
  float p = direction_y.getCount();
  //s2.dy=p*10;
  s2.y = s2.y+p*10;
}
