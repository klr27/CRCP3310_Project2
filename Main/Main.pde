Bag bag;
Walker walker;
PVector initialPosition;
PVector bagPosition;

final int SCREEN_WIDTH = 1200;
final int STORY_HEIGHT = 425;
final int STATE_HEIGHT = 275; 

final color BAG_COLOR = color(225);
final color STACK_COLOR = color(200);

ArrayList<Datum> storyData = new ArrayList<Datum>();
final int TOTAL_DATA = 100;
final int TOTAL_HUES = 10;
int [] hues = new int[TOTAL_HUES];

int state;
final int WALK_STATE = 1;
final int STOP_STATE = 0;

void setup() {
  size(1200, 700);
  state = STOP_STATE;
  initColors();
  initStoryData();
  initWalkers();
  
}

void draw() {
  colorMode(RGB, 255);
  background(255);
  setupScreen();
  if (state == 0){
    walker.stopWalk();
    bag.stopWalk();
  }
  else {
   walker.walk();
   bag.walk();
  }
  runVis();
}

void mouseClicked() {
  state = (state + 1) % 2;
}