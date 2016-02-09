Bag bag;
Walker walker;

final int SCREEN_WIDTH = 1200;
final int STORY_HEIGHT = 350;
final int STATE_HEIGHT = 250; 

ArrayList<Datum> storyData = new ArrayList<Datum>();
final int TOTAL_DATA = 100;
final int TOTAL_HUES = 10;
int [] hues = new int[TOTAL_HUES];

void setup() {
  size(1200, 600);
  initColors();
  initStoryData();
}

void draw() {
  background(255);
  walker.walk();
  walker.display();
  for (int i = storyData.size() - 1; i >= 0; --i) {
    Datum d = storyData.get(i);
    d.display();
    if (walker.isTouching(d)) {
      //walker.eat(d); //remove f from the food arrayList
      storyData.remove(d);
    }
    
  }
  
}