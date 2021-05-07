class Bat extends GameElement {
  float w;
  float h;

  Bat (float x, float y, float w, float h) {
    super(x,y);
    this.w = w;
    this.h = h;
  }

  void reactToBoarders () {
    if (y<0) {
      y = 0;
    }
    if ((score1+score2) <20){
      if (y>height-h) {
      y = height-h;
      }
    }
    if ((score1+score2) >20){
      if (y>height-h/2) {
      y = height-h/2;
      }
    }
  }
  
  
  void plot () {
    fill(c);
    if ((score1+score2) <20){
    rect(x, y, w, h);
    }
    if ((score1+score2) >20){
    rect(x, y, w, h/2);
    }
  }
}
