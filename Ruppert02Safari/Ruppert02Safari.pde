Walker walker;

void setup() {
  size(400, 400);
  walker = new Walker(height / 2, width / 2);
}

void draw() {
  walker.walk();
  drawWalker();
}

void drawWalker() {
  stroke(random(255), random(255), random(255));
  rect(walker.x, walker.y, 2, 2);
}


class Walker {
  
  public int x;
  public int y;

  public Walker(int x, int y) {
    this.x = x;
    this.y = y;
  }

  public void walk() {
    float direction = random(1);
    if (direction < 0.2) --x;
    else if (direction < 0.4) --y;
    else if (direction < 0.7) ++y;
    else ++x;
  }

}
