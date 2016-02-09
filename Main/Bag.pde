class Bag extends Walker {
  
public Bag(PVector initialPosition) {
  super(initialPosition); 
}

void display() {
  colorMode(RGB, 255); 
  fill(BAG_COLOR);
  stroke(0);
  super.display();
}

public void bagAdd() {
}

public void bagDelete() {
}

}