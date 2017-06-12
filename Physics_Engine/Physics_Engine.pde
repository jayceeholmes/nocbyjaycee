
// GLOBAL
Mover[] movers = new Mover[3];

PVector gravity; 
PVector wind; 

void setup() {
  size(500, 500);

  // Mover Object
  for (int i =  0; i < movers.length; i++) {
    movers[i] = new Mover();
  } // End For 

  // Forces
  gravity = new PVector(0, 0.1);
  wind = new PVector(-0.1, 0);
} // End setup

void draw() { 
  background(255);



  for (Mover m : movers) {
    // Mover Functions
    m.applyForce(gravity);

    if (mousePressed) {
      m.applyForce(wind);
    } // End If

    m.update();
    m.checkEdges();
    m.display();
  } // End For
} // End Draw