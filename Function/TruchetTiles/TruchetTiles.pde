int num = 10;

void setup() {
    size(500, 500);
    frameRate(1);
}

void draw() {
    background(255);
    for (int y = 0; y < height; y+=height / num) {
        for (int x = 0; x < width; x+=width / num) {
            tile(x, y, width / num, int(random(0, 2)));
        }
    }
}

void tile(int x, int y, int w, int mode) {
    noFill();
    strokeWeight(5);
    if (mode == 0) {
        arc(x, y, w, w, radians(0), radians(90));
        arc(x + width / num, y + height / num, w, w, radians(180), radians(270));
    } else {
        arc(x + width / num, y, w, w, radians(90), radians(180));
        arc(x, y + height / num, w, w, radians(270), radians(360));
    }
}
