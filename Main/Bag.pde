class Bag extends Walker {
  
  ArrayList<Datum> bagData = new ArrayList<Datum>();
  
public Bag(PVector initialPosition) {
  super(initialPosition); 
}

void display() {
  fill(BAG_COLOR);
  for (Datum d : bagData) {
    d.display();
  }
  super.display();
}

public void take(Datum d) {
  bagData.add(d);
  d.position.x = random(10, SCREEN_WIDTH/4 - 10);
  d.position.y = random(STORY_HEIGHT + 10, 690);
}

public void delete(Datum d) {
}

}