class Pixel{
	float pixSize; //pixel size is width and height, as each pixel is round
	float xPos, yPos; //pixel locations from CENTER
	color pixColor;
	ArrayList<color> inputColors;

	Pixel(){
		pixSize = 10; //default value
		xPos = 0;
		yPos = 0;
		pixColor = color(255, 255, 255);
		inputColors =  = new ArrayList<color>();
		inputColors.clear();
	}

	void setSize(float _size){
		pixSize = _size;
		inputColors.clear();
	}

	void setLoc(float _xPos, float _yPos){
		xPos = _xPos;
		yPos = _yPos;
	}

	void addInputColor(color _color){
		inputColors.add(_color);
	}

	void setColor(){
		float rVal = 0;
		float gVal = 0;
		float bVal = 0;
		for (int i = 0; i<inputColors.size(); i++){
			rVal += red(inputColors.get(i));
			gVal += green(inputColors.get(i));
			bVal += blue(inputColors.get(i));
		}
		rVal /= inputColors.size();
		gVal /= inputColors.size();
		bVal /= inputColors.size();
		pixColor = color(rVal, gVal, bVal);
	}

	void clearInputColors(){
		inputColors.clear();
	}

	void display(){
		pushStyle();
		noStroke();
		fill(pixColor);
		ellipseMode(CENTER);
		ellipse(xPos, yPos, pixSize, pixSize);
		popStyle();
	}

	boolean isWithin(float _xLoc, float _yloc){
		if (dist(_xLoc, _yLoc, xPos, yPos) < pixSize/2){
			return true;
		}
		else {
			return false;
		}
	}

	// float pixXLoc = ((i%xCount)*xOffset+pixSize/2)+xLoc;
	// float pixYLoc = ((floor(i/xCount))*yOffset+pixSize/2)+yLoc;
}