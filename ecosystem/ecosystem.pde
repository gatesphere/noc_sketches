Ziggy[] ziggies = new Ziggy[5];

void setup() {
  size(600,600);
  for (int i = 0; i < ziggies.length; i++) 
    ziggies[i] = new Ziggy();
}

void draw() {
  background(255);
  for (int i = 0; i < ziggies.length; i++) {
    ziggies[i].update();
    ziggies[i].checkEdges();
    ziggies[i].display();
  }
}
