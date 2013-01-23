class Mover {
  PVector location;
  PVector velocity;
  PVector acceleration;
  PVector helium;
  float mass;
  
  Mover(PVector l, float m) {
    this.velocity = new PVector(0,0);
    this.acceleration = new PVector(0,0);
    this.mass = m;
    this.location = l;
    this.helium = new PVector(0, -0.5*this.mass);
  }
  
  void applyForce(PVector force) {
    PVector f = force.get();
    f.div(mass);
    acceleration.add(f);
  }
  
  void update() {
    applyForce(helium);
    velocity.add(acceleration);
    velocity.limit(5.0);
    location.add(velocity);
    println(velocity);
    acceleration.mult(0);
  }
  
  void draw() {
    ellipse(location.x, location.y, mass, mass);
  }
  
  void checkEdges() {
    if(location.y <= mass) {
      location.y = mass;
      applyForce(PVector.mult(PVector.mult(velocity,-1), mass*1.7));
      //applyForce(new PVector(0,30)); // bounce
    }
    if(location.x <= 0)
      location.x = 0;
    if(location.x >= width)
      location.x = width;
  }
}
