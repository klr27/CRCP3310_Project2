class Walker {

  final float MAX_VELOCITY = .75;
  final float NOISE_DELTA = 0.005;
  final int WIDTH = 30;
  PVector position;
  PVector velocity;
  PVector acceleration;
  PVector tendency;
  float xOffset;

  public Walker(PVector initialPosition) {
    this.position = initialPosition;
    acceleration = new PVector(0,0); 
    velocity = new PVector(0,0); 
    xOffset = 0.0;
  }

  public void walk() {
    acceleration = PVector.fromAngle(noise(xOffset)* TWO_PI);
    velocity.add(acceleration);
    velocity.add(tendency);
    position.add(velocity);
    velocity.limit(MAX_VELOCITY);
    xOffset += NOISE_DELTA;
    if (position.y < 0) position.y = STORY_HEIGHT - WIDTH;
    if (position.y > STORY_HEIGHT - WIDTH) position.y = 0;
    if (position.x < 0) position.x = width;
    if (position.x > width) position.x = 0;
  }

  public void stopWalk() {
    acceleration = new PVector(0, 0);
    velocity = new PVector(0, 0);
  }

  public void applyForce(PVector f) {
    velocity.add(f);
  }

  void display() {
    rectMode(CENTER);
    stroke(0);
    rect(position.x, position.y, WIDTH, WIDTH);
  }

  public boolean isTouching(Datum d) {
    return position.dist(d.position) < (WIDTH/2 + d.diameter/2);
  }
}