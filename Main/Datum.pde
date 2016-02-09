class Datum {
  PVector position;
  int hue;
  final int SATURATION = 200;
  final int BRIGHTNESS = 200;
  int diameter;
  
  public Datum(PVector position, int hue) {
    this.position = position;
    this.hue = hue;
    int diameter = 10;
  }
  
  public void display() {
    stroke(0);
    colorMode(HSB, 255);
    fill(hue, SATURATION, BRIGHTNESS);
    ellipse(position.x, position.y, diameter, diameter);
  }
}