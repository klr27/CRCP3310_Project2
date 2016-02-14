class Queue extends Walker {
  
  final int QUEUE_SIZE = 20;
  CircularFifoQueue queueData = new CircularFifoQueue(QUEUE_SIZE);

  public Queue(PVector initialPosition) {
    super(initialPosition);
    velocity = new PVector(0, .3); 
    tendency = new PVector(1.4, .4);
  }

  void display() {
    fill(QUEUE_COLOR);
    super.display();
    drawState();
  }

  void drawState() {
  }

  public void take(Datum d) {
    if (!queueData.isFull()) {
      queueData.add(d);
      storyData.remove(d);
    }
  }

  public void delete(Datum d) {

}