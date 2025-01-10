public class Predator extends Animal {
  public Predator (World w) {
    super(w);
    energy= 10;                   //initializng energy level
  }

  @Override
    void display() {
    if (!alive) return;           //if the predator is alive the display method will show on the sketch
    fill(200, 125, 0);
    ellipse(0, 0, sz, sz );
  }

  @Override
    void step() {
    super.step();                         //calls the parent step method
    energy -= .15;                      
    if (shouldReproduce()==true) {

      w.addAnimal(new Predator(w));      //add the preys through addanimal method
    }
    if (energy <= 0) {                  // if they have no energy, they will die
      super.die();
    }
    if (nearBy(8, Prey.class)) {     //if the statement is true, increase the energy
      energy = energy +5;          //increase energy level
    }
  }
}
