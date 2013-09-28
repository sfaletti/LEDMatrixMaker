class Pixel{
	float pixSize, xPos, yPos; //pixel size is width and height, as each pixel is round
	color pixColor;

	Pixel(){
		pixSize = 10; //default value
		xPos = 0;
		yPos = 0;
		pixColor = color(255, 255, 255);
	}

	void setSize(float _size){
		pixSize = _size;
	}

	void setLoc(float _xPos, float _yPos){
		xPos = _xPos;
		yPos = _yPos;
	}

	void setColor(color _color){
		pixColor = _color;
	}

	void display(){
		pushStyle();
		noStroke();
		fill(pixColor);
		ellipseMode(CENTER);
		ellipse(xPos, yPos, pixSize, pixSize);
		popStyle();
	}

}