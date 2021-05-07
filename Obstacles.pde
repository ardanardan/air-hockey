class Obstacles {
  float x;
  float y;
  float w;
  float h;
  float dy;

  Obstacles (float x, float y) {
    this.x = x;
    this.y = y;
    this.w = 10;
    this.h = 200;
    this.dy=5;
  }

  void handle () {
    move ();
    plot ();
    reset ();
  }

  void move () {
    y += dy;
  }

  void plot () {
    rect(x, y, w, h);
  }

  void reset () {
    if (y>height) {
      o1.x= 300;
      o1.y=random(h*-3,-h);
    }
  }
}
