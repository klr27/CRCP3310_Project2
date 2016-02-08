Walker walker;

void setup() {
  size(1000, 600);
  walker = new Walker(new PVector(width/2, height/2));
}

void draw() {
  walker.walk();
  //walker.applyForce(new PVector(-0.1, 0));
  walker.drawWalker();
}