/* Nadia Mehjabin <nm6088@bard.edu>
Nov 19 2021
CMSC 141
Simulation
I worked alone on this assignment with the assistance from tutor.

*/
World w;

void setup() {
  size(500, 500);
  w = new World();
  for (int i = 0; i < 50; i++) {
    w.addAnimal(new Prey(w));
  }

  for (int i = 0; i < 10; i++) {
    w.addAnimal(new Predator(w));
  }
}

void draw() {
  background(196);
  w.tic();
  drawPop();
}

void drawPop() {
  int numPrey = w.count(Prey.class);
  int numPredator = w.count(Predator.class);

  if (numPrey == 0 || numPredator == 0) {
    background(196);
    textSize(32);
    fill(24);
    text("steps: " + frameCount, 50, 50);
    text("prey: " + numPrey, 50, 100);
    text("predator: " + numPredator, 50, 150);
    noLoop();
  } else {  
    noStroke();
    fill(0, 0, 255, 124);
    rect(0, 10, numPrey*3, 18);
    fill(255, 0, 0, 124);
    rect (0, 30, numPredator*3, 18);
  }
}
