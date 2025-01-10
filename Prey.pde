class Prey extends Animal {
                       //extending parent class
  Prey (World w) {
    super( w);
    energy = 10;       //intialiazing energy level
  }

  @Override
  void display() {
    fill(155, 200, 0);
    ellipse(0, 0, sz+5, sz+5 );
  }

  @Override
  void step() {
    super.step();                         //calls the parent step method
    if (shouldReproduce()==true) {       //checks the Animals's shouldReproduce method

      w.addAnimal(new Prey(w));         //add the preys through addanimal method
    }
    if (nearBy(8, Predator.class)) {
      super.die();                     // then call the parent die method to get rid of them
    }
  }
}
