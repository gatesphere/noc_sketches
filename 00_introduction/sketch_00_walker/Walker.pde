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
    /*
    int choice = int(random(4));
    if (choice == 0) {
      x++;
    } else if (choice == 1) {
      x--;
    } else if (choice == 2) {
      y++;
    } else {
      y--;
    }
    */
    float r = random(1);
    if (r < .5) {
      // move in direction of mouse
      int deltax = mouseX - x;
      int deltay = mouseY - y;
      if (deltax < 0) x--;
      else x++;
      if (deltay < 0) y--;
      else y++;
    } else {
      // random walk
      int stepx = int(random(3))-1;
      int stepy = int(random(3))-1;
      x += stepx;
      y += stepy;
    }
    
    /*
    int stepx = int(random(4))-1;
    int stepy = int(random(4))-1;
    if (stepx == 2) stepx = 1;
    if (stepy == 2) stepy = 1;
    x += stepx;
    y += stepy;
    */
  }
  
}

