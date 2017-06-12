// Mover Class

class Mover {

  // Variables
  PVector position; 
  PVector velocity; 
  PVector acceleration; 

  float mass; 

  // Constructor Function
  Mover() {
    position = new PVector(random(0, width), 0);
    velocity = new PVector(0, 0);
    acceleration = new PVector(0, 0);
    mass = random(.9, 1.2);
  } // End Mover Constructor Function

  // Functions

  void applyForce(PVector f) {
    PVector force = PVector.div(f, mass);
    acceleration.add(force);
  } // End applyForce

  void update() {
    velocity.add(acceleration);
    position.add(velocity);
    acceleration.mult(0);
  } // End Update

  void checkEdges() {
    if (position.y > height) {
      position.y = height;
      velocity.y *= -0.9;
    } // End If
    if (position.x < 0) {
      position.x = 0;
      velocity.x *= -0.9;
    } // End If
    if (position.x > width) {
      position.x = width;
      velocity.x *= -0.9;
    } // End If
  } // End checkEdges

  void display() {
    fill(0);
    rect(position.x, position.y, 30, 30);
  } // End Display
} // End Mover Class 