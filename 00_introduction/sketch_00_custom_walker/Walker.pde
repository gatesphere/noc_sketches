class Walker {
  int x;
  int y;
  
  Walker() {
    x = width/2;
    y = height/2;
  }
  
  void display() {
    stroke(0);
    point(x, y);
  }
  
  void step() {
    float step = montecarlo(20);
    x += random(-step, step);
    y += random(-step, step);
  }
  
  float montecarlo(int x) {
    while (true) {
      float r1 = random(x);
      float r2 = random(x);
      
      if (r2 < r1*r1)
        return r1;
    }
  }
}

