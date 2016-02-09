class Bag extends Walker {
  
  ArrayList<Datum> bagData = new ArrayList<Datum>();
  
public Bag(PVector initialPosition) {
  super(initialPosition); 
}

void display() {
  fill(BAG_COLOR);
  super.display();
}

public void take(Datum d) {
  bagData.add(d);
}

public void delete(Datum d) {
}

}