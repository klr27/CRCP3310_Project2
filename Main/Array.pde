class ArrayObject extends Walker {

  ArrayList<Datum> arrayData = new ArrayList<Datum>();
  final int ARRAY_CAPACITY = 30;

  public ArrayObject(PVector initialPosition) {
    super(initialPosition);
    velocity = new PVector(0, 1); 
    tendency = new PVector(1, 0);
  }

  void display() {
    fill(ARRAY_COLOR);
    super.display();
    drawState();
  }

  void drawState() {
    for (int i=0; i< arrayData.size() - 1; i++) {
      Datum d = arrayData.get(i);
      float x = 367.5;
      d.position.x = x + i*15;
      rectMode(CENTER);
      stroke(0);
      fill(255);
      rect(x + i*15, 475, 15, 15); 
      d.display();
    } 
    fill(0);
    textSize(10);
    String capacity = "Capacity: " + ARRAY_CAPACITY;
    String elements = "Elements: " + arrayData.size();
    text(elements, 360, 540);
    text(capacity, 750, 540);
  }

  public void take(Datum d) {
    if (arrayData.size() < ARRAY_CAPACITY) {
      d.position.y = 475;
      arrayData.add(d);
      storyData.remove(d);
    }
  }

  public void delete(Datum d) {
    for (Datum datum : arrayData) {
      if (datum.c == d.c) {
        d.position.x = random(10, 370);
        d.position.y = random(10, STORY_HEIGHT - 10); 
        datum.position.x = random(10, SCREEN_WIDTH - 10);
        datum.position.y = random(10, STORY_HEIGHT - 10); 
        storyData.add(datum);
        arrayData.remove(datum);
        break;
      }
    }
  }
}