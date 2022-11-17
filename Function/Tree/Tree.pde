float scale = 0.7;
float angle = 20;
float len = 100;
int n = 8;

void setup() {
  size(500, 500);
  background(255);
  drawTree(width/2, height, len, 0, n);
}

void drawTree(float x1, float y1, float len, float stand, int n) {
  float x2= x1 + len * sin(radians(stand));
  float y2= y1 - len * cos(radians(stand));
  line(x1, y1, x2, y2);
  if (n >= 1) {
    drawTree(x2, y2, len * scale, stand-angle, n - 1);
    drawTree(x2, y2, len * scale, stand+angle, n - 1);
  }
}
