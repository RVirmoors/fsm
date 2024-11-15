// 1: circle at (mouseX, mouseY)
// 2: 2 circles, (mouseX, mouseY) (pmouseX, pmouseY)
// 3: ellipse at (mouseX+pmouseX)/2, ...
// 4: history of 5 previous positions
int state;
int[] mx = {0, 0, 0, 0, 0};
int[] my = {0, 0, 0, 0, 0};

void setup() {
  size(400, 400);
  frameRate(20);
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
    circle(pmouseX, pmouseY, 30);
  }
  if (state == 3) {
    fill(100,255,20,100);
    circle(mouseX, mouseY, 50);
    fill(255,10,90,100);
    circle(pmouseX, pmouseY, 30);
    fill(10,130,255,100);
    ellipse((mouseX+pmouseX)/2, (mouseY+pmouseY)/2, 70, 10);
  }
}

void mouseClicked() {
  state = state + 1;
  if (state > 5) {
    state = 1;
  }
  println(state);
}
