class PixelArray{
	float xLoc, yLoc; //locate the array
	int xCount, yCount; //how many pixels
	Pixel[][] pixelArray; //create an array of Pixel objects
	float dispWidth, dispHeight, pixSize; //set display and pixel sizes

	PixelArray(int _xCount, int _yCount, float _dispWidth, float _dispHeight){
		xLoc = 0;
		yLoc = 0;
		xCount = _xCount;
		yCount = _yCount;
		dispWidth = _dispWidth;
		dispHeight = _dispHeight;
		pixSize = 30; //default value
		pixelArray = new Pixel[xCount][yCount];
		setPixLocs();
		setPixSizes(pixSize);
	}

	void setPixSizes(float _pixSize){
		pixSize = _pixSize;
		for (int i = 0; i<xCount; i++){
			for (int j = 0; j<yCount; j++){
				pixelArray[i][j].setSize(pixSize);
			}
		}
	}

	void setPixLocs(){
		float xOffset = dispWidth/xCount;
		float yOffset = dispHeight/yCount;
		for (int i = 0; i<yCount; i++){
			for (int j = 0; j<xCount; j++){
				float pixXLoc = j*xOffset+pixSize/2+xLoc;
				float pixYLoc = i*yOffset+pixSize/2+yLoc;
				pixelArray[j][i].setLoc(pixXLoc, pixYLoc);
			}
		}
	}

	void setPixColors(PImage _img){
		for (int i = 0; i<xCount; i++){
			for (int j = 0; j<yCount; j++){
				pixelArray[i][j].clearInputColors();
			}
		}
		_img.resize(dispWidth, dispHeight);
		for (int i = 0; i<_img.height; i++){
			for (int j = 0; j<_img.width; j++){
				for (int k = 0; k<yCount; k++){
					for (int l = 0; l<xCount; l++){
						if (pixelArray[l][k].isWithin(j,i)){
							pixelArray.addInputColor(_img.get(j,i));
						}
					}
				}
			}
		}
		for (int i = 0; i<xCount; i++){
			for (int j = 0; j<yCount; j++){
				pixelArray[i][j].setColor();
			}
		}
	}

	void display(){
		for (int i = 0; i<xCount; i++){
			for (int j = 0; j<yCount; j++){
				pixelArray[i][j].display();
			}
		}
	}
}