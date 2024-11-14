int state;

void setup() {
  size(400, 400);
}

void draw() {
  background(0);
  textSize(50);
  text(state, 10, 60);
}

void mouseClicked() {
  state = state + 1;
  if (state > 5) {
    state = 1;
  }
  println(state);
}
