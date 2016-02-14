class Queue extends Walker {

  final int QUEUE_SIZE = 30;
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

    fill(255, 0, 0);
    if (count > 0) {
      rect(367.5 + (count - 1)*15, 625, 15, 15);
    } else {
      rect(367.5 + 29*15, 625, 15, 15);
    }

    Datum datum = queueData.peek();
    if (datum != null) {
      fill(0);
      rect(datum.position.x, 625, 15, 15);
    }

    for (Datum d : queueData) {
      if (d != null) {
        d.display();
      }
    }
    fill(0);
    textSize(10);
    String elements = "Elements: " + queueData.size();
    String capacity = "Capacity: " + QUEUE_SIZE;
    text(elements, 360, 690);
    text(capacity, 750, 690);
    text("Head: ", 710, 570);
    text("Tail: ", 770, 570);
    rect(752.5, 562.5, 15, 15);
    fill(255, 0, 0);
    rect(802.5, 562.5, 15, 15);
  }

  public void take(Datum d) {
    d.position.x = 367.5 + (15*count);
    d.position.y = 625;
    if (!queueData.isFull()) {
      queueData.add(d);
      storyData.remove(d);
    } else {
      Datum datum = queueData.peek();
      datum.position.x = random(10, SCREEN_WIDTH - 10);
      datum.position.y = random(10, STORY_HEIGHT - 10);
      storyData.add(datum);
      queueData.remove();
      queueData.add(d);
    }
    if (count == 29) {
      count = 0;
    } else {
      count += 1;
    }
  }

  public void delete(Datum d) {
    Datum datum = queueData.peek();
    if (datum != null) {
      if (datum.c == d.c) {
        datum.position.x = random(10, SCREEN_WIDTH - 10);
        datum.position.y = random(10, STORY_HEIGHT - 10);
        d.position.x = random(655, 920);
        d.position.y = random(10, STORY_HEIGHT - 10);
        queueData.remove();
        storyData.add(datum);
      }
    }
  }
}