class Bag extends Walker {

  final color BAG_COLOR = color(200);
  
public Bag(PVector initialPosition) {
  super(initialPosition); 
}

public void display() {
  fill(BAG_COLOR);
  super.display();
}

public void bagAdd() {
}

public void bagDelete() {
}

}