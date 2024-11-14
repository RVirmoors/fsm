// 1: circle at (mouseX, mouseY)
int state;

void setup() {
  size(400, 400);
}

void draw() {
  background(0);
  fill(255); // text alb
  textSize(50);
  text(state, 10, 60);
  if (state == 1) {
    fill(100,200,20); // cerc verde
    circle(mouseX, mouseY, 50);
  }
}

void mouseClicked() {
  state = state + 1;
  if (state > 5) {
    state = 1;
  }
  println(state);
}
