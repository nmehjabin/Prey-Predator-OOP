import java.util.ArrayList;
class World {
  
  ArrayList<Animal>animals;    //using an ArrayList of Animals rather than a 
                                //statically sized array.

  World() {
    animals = new ArrayList<Animal>(); //defining the arraylist
  }

  void tic() {
    for (int i = 0; i < animals.size(); i++) {
      animals.get(i).step();
      animals.get(i).show();
    }
    removeDead();
  }

  void addAnimal(Animal a) {
    
    animals.add(a);    
  }

  int count(Class T) {
    int count = 0;
    for (int i = 0; i < animals.size(); i++) {
      if (T.isInstance(animals.get(i))) {
        count ++;
      }
    }
    return count;
  }

  void removeDead() {
    for (int i = animals.size()-1; i >= 0; i--) {
      if (!animals.get(i).alive) {
        animals.remove(i);
       
      }
    }
  }

  boolean nearBy(Animal c, float maxD, Class T) {
    for (int i = 0; i < animals.size(); i++) {
      float d =  c.distance(animals.get(i));
      if (d < maxD && T.isInstance(animals.get(i))) {
        return true;
      }
    }
    return false;
  }
}
