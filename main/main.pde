// 1: circle at (mouseX, mouseY)
// 2: 2 circles, (mouseX, mouseY) (pmouseX, pmouseY)
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
    fill(100,255,20,100); // cerc verde RGBA
    circle(mouseX, mouseY, 50);
  }
  if (state == 2) {
    fill(100,255,20,100);
    circle(mouseX, mouseY, 50);
    fill(255,10,90,100);
    circle(mouseX, mouseY, 30);
  }
}

void mouseClicked() {
  state = state + 1;
  if (state > 5) {
    state = 1;
  }
  println(state);
}
