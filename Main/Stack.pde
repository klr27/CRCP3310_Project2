class Stack extends Walker {

  ArrayList<Datum> stackData = new ArrayList<Datum>();

  public Stack(PVector initialPosition) {
    super(initialPosition);
    velocity = new PVector(1, 1); 
    tendency = new PVector(1.45, -.5);
  }

  void display() {
    fill(STACK_COLOR);
    super.display();
    fill(0);
    text("S", position.x - 4, position.y + 5);
    drawState();
  }

  void drawState() {
    for (int i = stackData.size() - 1; i>= 0; --i) {
      Datum d = stackData.get(i);
      d.position.y = 440 + ((stackData.size() - 1 - i + 16) % 16)*15; 
      if (i >= 48) {
        d.position.x = 337.5;
      } else if (i < 48 && i >= 32) {
        d.position.x = 312.5;
      } else if (i < 32 && i >= 16) {
        d.position.x = 267.5;
      } else {
        d.position.x = 242.5;
      }
      d.display();
    } 
    fill(0);
    textSize(10);
    String elements = "Elements: " + stackData.size();
    text(elements, 235, 690);
  }

  public void take(Datum d) {
    stackData.add(d);
    storyData.remove(d);
  }

  public void delete(Datum d) {
    if (!stackData.isEmpty()) {
      Datum datum = stackData.get(stackData.size() - 1);
      if (d.c == datum.c) {
        d.position.x = random(10, 370);
        d.position.y = random(10, STORY_HEIGHT - 10); 
        datum.position.x = random(10, SCREEN_WIDTH - 10);
        datum.position.y = random(10, STORY_HEIGHT - 10); 
        storyData.add(datum);
        stackData.remove(datum);
      }
    }
  }
}