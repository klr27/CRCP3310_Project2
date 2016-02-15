//Project 2: Data Structure Visualization (Data Structure Safari)
//Kali Ruppert

Bag bag;
Stack stack;
ArrayObject array;
Queue queue;
PVector arrayPos;
PVector bagPos;
PVector stackPos;
PVector queuePos;

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
final int TOTAL_DATA = 150;
final int TOTAL_COLORS = 7;
color [] colors = new color[TOTAL_COLORS];


void setup() {
  size(1200, 700);
  initColors();
  initStoryData();
  initWalkers();
}

void draw() {
  background(255);
  setupScreen();
  bag.walk();
  stack.walk();
  array.walk();
  queue.walk();
  runVis();
}