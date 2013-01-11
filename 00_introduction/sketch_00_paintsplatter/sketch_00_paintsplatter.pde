import java.util.Random;

Random generator;

float sd = 60;
float mean = 320;

int splatters = 10;

void setup() {
  background(255);
  size(640, 640);
  generator = new Random();
  noStroke();
}

void draw() {
  // gaussian color
  fill(color(int(rand_gauss()/2), int(rand_gauss()/2), int(rand_gauss()/2)));
  // gaussian size
  float r = rand_gauss() / 50;
  // gaussian splattering
  for (int i = 0; i < splatters; i++) {
    float x = rand_gauss();
    float y = rand_gauss();
    ellipse(x, y, r-i, r-i);
  }
}

float rand_gauss() {
  return sd * ((float)generator.nextGaussian()) + mean;
}
