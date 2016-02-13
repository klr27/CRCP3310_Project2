class Datum {
  PVector position;
  color c;
  int diameter;
  
  public Datum(PVector position, color c) {
    this.position = position;
    this.c = c;
    diameter = 10;
  }
  
  public void display() {
    stroke(0);
    fill(c);
    ellipse(position.x, position.y, diameter, diameter);
  }
}