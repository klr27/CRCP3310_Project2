Walker walker;

void setup() {
  size(400, 400);
  walker = new Walker(PVector(10, 10);
}

void draw() {
  walker.walk();
  drawWalker();
}

void drawWalker() {
  stroke(random(255), random(255), random(255));
  rect(walker.position.x, walker.position.y, 2, 2);
}


class Walker {
  
  PVector position;

  public Walker(PVector initialPosition) {
    this.position = initialPosition;
  }

  public void walk() {
    float direction = random(1);
    if (direction < 0.2) --position.x;
    else if (direction < 0.4) --position.y;
    else if (direction < 0.7) ++position.y;
    else ++position.x;
  }

}
