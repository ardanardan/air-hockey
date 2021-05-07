class Ball extends GameElement {
  float d;

  Ball (float x, float y, float d) {
    super(x, y, 5, 5, color(255, 250, 250));
    this.d = d;
  }

  void plot () {
    fill(c);
    ellipse(x, y, d, d);
  }


  void reactToBoarders () {
    
    //rightbat
    if ((score1+score2) < 20){
      if (x > width-d/2-20 && y>s2.y && y<s2.y+100) {
        dx = dx*-1;
        x = width-d/2-20;
      }
    }
    if ((score1+score2) > 20){
      if (x > width-d/2-20 && y>s2.y && y<s2.y+50) {
        dx = dx*-1;
        x = width-d/2-20;
      }
    }
    
   
    //leftbat
    if ((score1+score2) < 20){
      if (x < 20+d/2 && y>s1.y && y<s1.y+100) {
        dx = dx*-1;
        x = 20+d/2;
      }
    }
    
    if ((score1+score2) > 20){
      if (x < 20+d/2 && y>s1.y && y<s1.y+50) {
        dx = dx*-1;
        x = 20+d/2;
      }
    }
   
    //rightborder
    if (x<0) {
      x=(width/2)+15;
      y=height/2-random(-100,100);
      score2 += 1;
    }
    
    //leftborder
    if (x>width) {
      x=(width/2)-15;
      y=(height/2)-random(-100,100);
      score1 += 1;
    }
    
    //bottomline
    if (y > height-d/2) {
      dy = dy*-1;
      y = height-d/2;
    }
    
    //topline
    if (y < d/2) {
      dy = dy*-1;
      y = d/2;
    }
    
    //obstacle1
    if (y-d/2 > o1.y && y+d < o1.y + o1.h) {
        if(x+d/2 == o1.x) {
        x = 290;
        dx = dx*-1;
        }
        if(x-d/2 == o1.x+5) {
        x=310;
        dx=dx*-1;
        }
      
      /*if (x+d/2 == o1.x || x-d/2 == o1.x+5 ) {
      dx = dx*-1;
      }*/
    }
    
  }
}
