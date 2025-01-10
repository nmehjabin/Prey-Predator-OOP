
class Animal {
  float x, y;
  float sz;
  float tspeed, fspeed;
  float heading;
  float energy;
  boolean alive = true;
  float reproductionRate;
  World w;

  Animal(World w) {
    x = random(width);
    y = random(height);
    tspeed = 0.1;
    fspeed = 2;
    sz = 15;
    energy = 200;
    reproductionRate = 0.01;
    heading = random(2*PI);
    this.w = w;
  }
  
 // first job is to override this in child classes
  void display() {
  }

  void show() {
    if (alive) {
      pushMatrix();
      translate(x, y);
      rotate(heading);
      display();
      popMatrix();
    }
  }

  boolean shouldReproduce() {
    return random(1) < reproductionRate;
  }

  void turn(float dRads) {
    heading += dRads;
  }

  void forward(float amount) {
    x += cos(heading) * amount;
    y += sin(heading) * amount;
  }

  void move() {
    turn(random(-tspeed, tspeed));
    forward(random(fspeed));
  }

  void step() {
    move();
    fence();
  }

  void wrap() {
    if (x > width) x = 0;
    else if (x < 0 ) x = width;
    
    if (y > height) y = 0;
    else if (y < 0 ) y = height;
  }

  void fence() {
    x = constrain(x, 0, width);
    y = constrain(y, 0, height);
  }

  void die() {
    alive = false;
  }

  float distance(Animal a) {
    return dist(x, y, a.x, a.y);
  }

  boolean nearBy(float maxD, Class T) {
    return w.nearBy(this, maxD, T);
  }
}
