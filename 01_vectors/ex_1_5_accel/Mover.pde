class Mover {
  PVector location;
  PVector velocity;
  PVector acceleration;
  
  float topspeed;
  
  Mover() {
    location = new PVector(random(width), random(height));
    velocity = new PVector(0,0);
    acceleration = new PVector(0, 0);
    topspeed = 10;
  }
  
  void update() {
    velocity.add(acceleration);
    velocity.limit(topspeed);
    location.add(velocity);
  }
  
  void accel() {
    acceleration.x = 0;
    acceleration.y = 0.01;
  }
  
  void decel() {
    acceleration.x = 0;
    acceleration.y = -0.01;
  }
  
  void display() {
    stroke(0);
    fill(175);
    ellipse(location.x, location.y, 16, 16);
  }
  
  void checkEdges() {
    if (location.x > width)
      location.x = 0;
    else if (location.x < 0)
      location.x = width;
    if (location.y > height)
      location.y = 0;
    else if (location.y < 0)
      location.y = height;
  }
}

