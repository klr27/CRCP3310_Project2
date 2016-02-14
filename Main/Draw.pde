void setupScreen() { 
  stroke(0);
  fill(0);
  for (int i=0; i< 27; i++) {
    int y = i*30;
    line(DELETE_ONE, y, DELETE_ONE, y + 15);
    line(ADD_TWO, y, ADD_TWO, y + 15);
    line(DELETE_TWO, y, DELETE_TWO, y + 15);
  }
  textSize(14);
  text("ADD", 225, 20);
  text("DELETE", 495, 20);
  text("ADD", 775, 20);
  text("DELETE", 1045, 20);

  rectMode(CORNER);
  fill(BAG_COLOR);
  rect(0, STORY_HEIGHT, 225, STATE_HEIGHT);
  fill(STACK_COLOR);
  rect(225, STORY_HEIGHT, 125, STATE_HEIGHT);
  fill(ARRAY_COLOR);
  rect(350, STORY_HEIGHT, 470, STATE_HEIGHT/2);
  fill(QUEUE_COLOR);
  rect(350, 550, 470, STATE_HEIGHT/2);
  fill(TREE_COLOR);
  rect(820, STORY_HEIGHT, 380, STATE_HEIGHT);

  fill(0);
  text("BAG", 10, 420);
  text("STACK", 235, 420);
  text("ARRAY", 360, 420);
  text("QUEUE", 360, 560);
}

void runVis() {
  bag.display();
  stack.display();
  array.display();
  for (int i = storyData.size() - 1; i >= 0; --i) {
    Datum d = storyData.get(i);
    d.display();
    if (d.position.x <= 375 || (d.position.x > 650 && d.position.x <= 925)) {
      if (bag.isTouching(d)) {
        bag.take(d);
      } else if (stack.isTouching(d)) {
        stack.take(d);
      } else if (array.isTouching(d)) {
        array.take(d);
      }
    } else {
      if (bag.isTouching(d)) {
        bag.delete(d);
      } else if (stack.isTouching(d)) {
        stack.delete(d);
      } else if (array.isTouching(d)) {
        array.delete(d);
      }
    }
  }
}