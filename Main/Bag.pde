class Bag extends Walker {
  
  ArrayList<Datum> bagData = new ArrayList<Datum>();
  
public Bag(PVector initialPosition) {
  super(initialPosition); 
}

void display() {
  colorMode(RGB, 255); 
  fill(BAG_COLOR);
  stroke(0);
  super.display();
}

public void take(Datum d) {
  
}

public void delete(Datum d) {
}

}