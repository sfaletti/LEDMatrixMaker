PixelArray lrDisp;
PImage inputImg;

void setup(){
	size(1000, 1000);
	lrDisp = new PixelArray(50, 100, 500, 800);
	inputImg = loadImage("beer_making copy.jpg");
}

void draw(){
	background(255);
	lrDisp.setPixColors(inputImg);
	lrDisp.display();
}