class Bag extends Walker {

  ArrayList<Datum> bagData = new ArrayList<Datum>();
  final int BAG_CAPACITY = 20;

  public Bag(PVector initialPosition) {
    super(initialPosition);
    velocity = new PVector(0, -1); 
    tendency = new PVector(1.75, -.25);
  }

  void display() {
    fill(BAG_COLOR);
    super.display();
    drawState();
  }

  void drawState() {
    for (Datum d : bagData) {
      d.display();
    }
    fill(0);
    textSize(10);
    String elements = "Elements: " + bagData.size();
    String capacity = "Capacity: " + BAG_CAPACITY;
    text(elements, 10, 690);
    text(capacity, 155, 690);
  }

  public void take(Datum d) {
    if (bagData.size() < BAG_CAPACITY) {
      d.position.x = random(10, 215);
      d.position.y = random(STORY_HEIGHT + 10, 650);
      bagData.add(d);
      storyData.remove(d);
    }
  }

  public void delete(Datum d) {
    for (Datum datum : bagData) {
      if (datum.c == d.c) {
        d.position.x = random(655, 920);
        d.position.y = random(10, STORY_HEIGHT - 10); 
        datum.position.x = random(10, SCREEN_WIDTH - 10);
        datum.position.y = random(10, STORY_HEIGHT - 10); 
        storyData.add(datum);
        bagData.remove(datum);
        break;
      }
    }
  }
}