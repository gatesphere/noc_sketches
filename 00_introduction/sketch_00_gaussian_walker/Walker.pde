import java.util.Random;

class Walker {
  int x;
  int y;
  Random generator;
  
  Walker() {
    generator = new Random();
    x = width/2;
    y = height/2;
  }
  
  void display() {
    stroke(0);
    point(x, y);
  }
  
  void step() {
    int stepx = (int) generator.nextGaussian();
    int stepy = (int) generator.nextGaussian();
    x += stepx;
    y += stepy;
  }
  
}

