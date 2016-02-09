void initColors() {
  for (int i=0; i < TOTAL_HUES; i++) {
    hues[i] = (int)random(0, 100);
  }
}

void initStoryData() {
  for(int i=0; i < TOTAL_DATA; i++) {
    PVector dataPos = new PVector(random(100, SCREEN_WIDTH), random(0, STORY_HEIGHT - 10));
    int dataHue = hues[(int)(random(0, TOTAL_HUES))];
    storyData.add(new Datum(dataPos, dataHue));
  }
}

void initWalkers() {
  initialPosition = new PVector(100, STORY_HEIGHT/2);
  bagPosition = new PVector(100, 10);
  walker = new Walker(initialPosition);
  bag = new Bag(bagPosition);
}