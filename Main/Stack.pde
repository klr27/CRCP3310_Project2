class Stack extends Walker {

  ArrayList<Datum> stackData = new ArrayList<Datum>();

  public Stack(PVector initialPosition) {
    super(initialPosition);
    velocity = new PVector(-1, 0); 
    tendency = new PVector(1.25, .5);
  }

  void display() {
    fill(STACK_COLOR);
    super.display();
    drawState();
  }

  void drawState() {
    for (int i = stackData.size() - 1; i>= 0; --i) {
      Datum d = stackData.get(i);
      d.position.y = 440 + (stackData.size() - 1 - i)*15; 
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
    d.position.x = 287.5;
  }

  public void delete(Datum d) {
    Datum datum = stackData.get(stackData.size() - 1);
    if (d.c == datum.c) {
      d.position.x = random(10, SCREEN_WIDTH - 10);
      d.position.y = random(10, STORY_HEIGHT - 10); 
      datum.position.x = random(10, SCREEN_WIDTH - 10);
      datum.position.y = random(10, STORY_HEIGHT - 10); 
      storyData.add(datum);
      stackData.remove(datum);
    }
  }
}