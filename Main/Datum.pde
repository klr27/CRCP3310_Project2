class Datum {
  PVector position;
  int hue;
  final int SATURATION = 90;
  final int BRIGHTNESS = 90;
  int diameter;
  
  public Datum(PVector position, int hue) {
    this.position = position;
    this.hue = hue;
    diameter = 10;
  }
  
  public void display() {
    stroke(0);
    colorMode(HSB, 100);
    fill(hue, SATURATION, BRIGHTNESS);
    ellipse(position.x, position.y, diameter, diameter);
  }
}