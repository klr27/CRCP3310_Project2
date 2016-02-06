Walker walker;

void setup() {
  size(1000, 600);
  walker = new Walker(new PVector(width/2, height/2));
}

void draw() {
  walker.walk();
  //walker.applyForce(new PVector(-0.1, 0));
  drawWalker();
}

void drawWalker() {
  rectMode(CENTER);
  stroke(random(255), random(255), random(255));
  rect(walker.position.x, walker.position.y, 25, 25);
}

void mousePressed() {
  //walker.applyForce(new PVector(3, 0));
}

class Walker {

  final int MAX_VELOCITY = 1;
  final float NOISE_DELTA = 0.005;
  PVector position;
  PVector velocity;
  PVector acceleration;
  PVector tendency;
  float xOffset;

  public Walker(PVector initialPosition) {
    this.position = initialPosition;
    velocity = new PVector(0, 0);
    acceleration = new PVector(0,0);
    tendency = new PVector(1,0);
    xOffset = 0.0;
  }

  public void walk() {
    acceleration = PVector.fromAngle(noise(xOffset)* TWO_PI);
    velocity.add(acceleration);
    velocity.add(tendency);
    position.add(velocity);
    velocity.limit(MAX_VELOCITY);
    xOffset += NOISE_DELTA;
    if (position.y < 0) position.y = height;
    if (position.y > height) position.y = 0;
    if (position.x < 0) position.x = width;
    if (position.x > width) position.x = 0;
  }

  public void applyForce(PVector f) {
    velocity.add(f);
  }
}