Bag bag;
Stack stack;
PVector bagPos;
PVector stackPos;

final int SCREEN_WIDTH = 1200;
final int STORY_HEIGHT = 400;
final int STATE_HEIGHT = 300; 
final int ADD_ONE = 100;
final int DELETE_ONE = 375;
final int ADD_TWO = 650;
final int DELETE_TWO = 925;

final color BAG_COLOR = color(240);
final color STACK_COLOR = color(210);
final color ARRAY_COLOR = color(180);
final color QUEUE_COLOR = color(150);
final color TREE_COLOR = color(120);

ArrayList<Datum> storyData = new ArrayList<Datum>();
final int TOTAL_DATA = 100;
final int TOTAL_COLORS = 10;
color [] colors = new color[TOTAL_COLORS];

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
  background(255);
  setupScreen();
  if (state == 0){
    bag.stopWalk();
    stack.stopWalk();
  }
  else {
   bag.walk();
   stack.walk();
  }
  runVis();
}

void mouseClicked() {
  state = (state + 1) % 2;
}