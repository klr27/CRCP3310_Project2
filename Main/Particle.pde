class DataPoint {
  PVector position;
  int hue; 
  
  public DataPoint(PVector position, int hue) {
    this.position = position;
    this.hue = hue;
  }
  
  public void drawDataPoint() {
    stroke(0);
    colorMode(HSB);
    fill(hue, 200, 200);
    ellipse(position.x, position.y, 5, 5);
  }
}