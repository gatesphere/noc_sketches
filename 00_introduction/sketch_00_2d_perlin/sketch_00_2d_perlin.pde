float t = 0.0;

void setup() {
  size(640, 360);
  noiseDetail(10, .48);
  //fillit();
}

void draw () {
  fillit();
  t += 0.01;
}

void fillit() {
  loadPixels();
  float xoff = 0.0;
  
  for (int x = 0; x < width; x++) {
    float yoff = 0.0;
    
    for (int y = 0; y < height; y++) {
      float bright = map(noise(t+xoff, t+yoff), 0, 1, 0, 255);
      pixels[x+y*width] = color(bright);
      yoff += 0.01;
    }
    xoff += 0.01;
  }
  updatePixels();
}
