void initColors() {
  colors[0] = color(85, 150, 255);
  colors[1] = color(35, 245, 232);
  colors[2] = color(196, 245, 52);
  colors[3] = color(215, 209, 255);
  colors[4] = color(151, 33, 255);
  colors[5] = color(255, 131, 160);
  colors[6] = color(255, 235, 118);
  colors[7] = color(255, 170, 0);
  colors[8] = color(178, 0, 157);
  colors[9] = color(2, 201, 10);
  
}

void initStoryData() {
  for (int i=0; i < TOTAL_DATA; i++) {
    PVector dataPos = new PVector(random(ADD_ONE, SCREEN_WIDTH), random(0, STORY_HEIGHT - 10));
    color dataColor = colors[(int)(random(0, TOTAL_COLORS))];
    storyData.add(new Datum(dataPos, dataColor));
  }
}

void initWalkers() {
  bagPos = new PVector(50, 50);
  bag = new Bag(bagPos);
  
  stackPos = new PVector(50, 100);
  stack = new Stack(stackPos);
}