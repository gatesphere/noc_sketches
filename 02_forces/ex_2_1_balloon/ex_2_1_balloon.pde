Mover m[] = new Mover[100];
PVector noisestep;
PVector noiseloc;

void setup() {
  size(180,360);
  fill(127, 80);
  noisestep = new PVector(0.001, 0.01);
  noiseloc = new PVector(1000, 400);
  for (int i = 0; i < m.length; i++)
    m[i] = new Mover(new PVector(random(0, width), random(0, height)), random(0,50.0));
}

void draw() {
  background(255);
  // wind
  noiseloc.add(noisestep);
  float wind = noise(noiseloc.x, noiseloc.y);
  PVector windvector = new PVector(wind,0);
  windvector.limit(0.2);
  windvector.mult(random(-1,1));
  for (int i = 0; i < m.length; i++) {
    m[i].applyForce(windvector);
    m[i].update();
    m[i].checkEdges();
    m[i].draw();
  }
}
