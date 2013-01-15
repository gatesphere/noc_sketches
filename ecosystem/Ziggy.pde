class Ziggy {
  PVector location;
  PVector velocity;
  PVector acceleration;
  
  float speed;
  
  Ziggy() {
    location = new PVector(random(width),random(height));
    velocity = new PVector(0,0);
    acceleration = new PVector(0,0);
    speed = 5;
  }
  
  void update() {
    // swim around kind of
    acceleration = PVector.random2D();
    acceleration.mult(random(2));
    
    velocity.add(acceleration);
    velocity.limit(speed);
    location.add(velocity);
  }
  
  void display() {
    noStroke();
    fill(0,127,255,64);
    ellipse(location.x, location.y, 32, 32);
  }
  
  void checkEdges() {
    if(location.x > width) location.x = width;
    else if (location.x < 0) location.x = 0;
    if(location.y > height) location.y = height;
    else if (location.y < 0) location.y = 0;
  }
}
