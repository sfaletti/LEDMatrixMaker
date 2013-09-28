class Pixel{
	float pixSize, xPos, yPos;
	color pixColor;

	Pixel(){
		pixSize = 30;
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
		ellipseMode(CENTER);
		noStroke();
		fill(pixColor);
		ellipse(xPos, yPos, pixSize, pixSize);
		popStyle();
	}

}