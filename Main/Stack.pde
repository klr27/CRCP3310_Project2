class Stack extends Walker {

  ArrayList<Datum> stackData = new ArrayList<Datum>();

  public Stack(PVector initialPosition) {
    super(initialPosition);
  }

  void display() {
    fill(STACK_COLOR);
    super.display();
    drawState();
  }

  void drawState() {
    for (Datum d : stackData) {
      d.display();
    }
    fill(0);
    noStroke();
    textSize(14);
    text("STACK", 235, 420);
    textSize(10);
    String elements = "Elements: " + stackData.size();
    text(elements, 235, 690);
  }

  public void take(Datum d) {
    
  }

  public void delete(Datum d) {
  }
}