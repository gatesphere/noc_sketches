class Walker {
  float x, y;
  float tx, ty;
  
  Walker() {
    x = width/2;
    y = height/2;
    tx = 0;
    ty = 10000;
  }
  
  void display() {
    stroke(0);
    point(x, y);
  }
  
  void step() {
    /*
    x = map(noise(tx), 0, 1, 0, width);
    y = map(noise(ty), 0, 1, 0, height);
    */
    float stepx = map(noise(tx), 0, 1, -1, 1);
    float stepy = map(noise(ty), 0, 1, -1, 1);
    x += stepx;
    y += stepy;
    constrain();
    tx += 0.01;
    ty += 0.01;
  }
  
  void constrain() {
    if (x < 0) x = 0;
    if (x > width) x = width;
    if (y < 0) y = 0;
    if (y > height) y = height;
  }
}
