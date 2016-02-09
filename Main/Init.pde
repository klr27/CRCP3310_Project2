void initColors() {
  for (int i=0; i < TOTAL_HUES; i++) {
    hues[i] = (int)random(0, 100);
  }
}

void initStoryData() {
  for(int i=0; i < TOTAL_DATA; i++) {
    PVector dataPos = new PVector(random(100, SCREEN_WIDTH), random(0, STORY_HEIGHT));
    int dataHue = hues[(int)(random(0, TOTAL_HUES))];
    storyData.add(new Datum(dataPos, dataHue));
  }
}