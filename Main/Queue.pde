class Queue extends Walker {

  final int QUEUE_SIZE = 20;
  CircularFifoQueue<Datum> queueData = new CircularFifoQueue<Datum>(QUEUE_SIZE);
  int count;

  public Queue(PVector initialPosition) {
    super(initialPosition);
    velocity = new PVector(0, .3); 
    tendency = new PVector(1.4, .4);
    count = 0;
  }

  void display() {
    fill(QUEUE_COLOR);
    super.display();
    drawState();
  }

  void drawState() {
    for (int i=0; i<QUEUE_SIZE; i++) {
      stroke(0);
      fill(255);
      rectMode(CENTER);
      rect(367.5 + i*15, 625, 15, 15);
    }

    Datum datum = queueData.element();
    fill(0);
    rect(datum.position.x, 625, 15, 15);

    for (Datum d : queueData) {
      d.display();
    }
    fill(0);
    textSize(10);
    String elements = "Elements: " + queueData.size();
    String capacity = "Capacity: " + QUEUE_SIZE;
    text(elements, 360, 690);
    text(capacity, 650, 690);
  }

  public void take(Datum d) {
    d.position.x = 367.5 + (15*count);
    d.position.y = 625;
    if (!queueData.isFull()) {
      queueData.add(d);
      storyData.remove(d);
    } else {
      Datum datum = queueData.element();
      datum.position.x = random(0, SCREEN_WIDTH);
      datum.position.y = random(0, STORY_HEIGHT);
      storyData.add(datum);
      queueData.remove();
      queueData.add(d);
    }
    if (count == 19) {
      count = 0;
    } else {
      count += 1;
    }
  }

  public void delete(Datum d) {
  }
}