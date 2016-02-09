void setupScreen() { 
 rectMode(CORNER);
 stroke(0);
 fill(BAG_COLOR);
 rect(0, STORY_HEIGHT, SCREEN_WIDTH/4, STATE_HEIGHT);
 
 fill(STACK_COLOR);
 rect(SCREEN_WIDTH/4, STORY_HEIGHT, SCREEN_WIDTH/4, STATE_HEIGHT);
 
 fill(175);
 rect(SCREEN_WIDTH/2, STORY_HEIGHT, SCREEN_WIDTH/4, STATE_HEIGHT);
 
 fill(150);
 rect(SCREEN_WIDTH/4 * 3, STORY_HEIGHT, SCREEN_WIDTH/4, STATE_HEIGHT);
 
}

void runVis() {
  walker.display();
  bag.display();
  for (int i = storyData.size() - 1; i >= 0; --i) {
    Datum d = storyData.get(i);
    d.display();
    if (bag.isTouching(d)) {
      bag.take(d);
      storyData.remove(d);
    }
  }
}