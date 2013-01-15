Mover mover;

void setup() {
  size(640,360);
  mover = new Mover();
}

void draw() {
  background(255);
  mover.update();
  mover.checkEdges();
  mover.display();
}

void keyPressed() {
  if (key == CODED) {
    if (keyCode == UP) {
      mover.accel();
    } else if (keyCode == DOWN) {
      mover.decel();
    }
  }
}
