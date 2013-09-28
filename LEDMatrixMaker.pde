PixelArray lrDisp;
PImage inputImg;

void setup() {
  size(1000, 500);
  lrDisp = new PixelArray(10, 10, 300, 250);
  inputImg = loadImage("hello.jpg");
}

void draw() {
  background(255);
  image(inputImg, 320, 10, 300, 250);
  lrDisp.setPixColors(inputImg, .5);
  lrDisp.setPixSizes(15);
  lrDisp.display();
}

