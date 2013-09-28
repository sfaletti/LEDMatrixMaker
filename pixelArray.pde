class PixelArray{
	int xCount, yCount;
	Pixel[] pixelArray;
	float dispWidth, dispHeight, pixSize;

	PixelArray(int _xCount, int _yCount, float _dispWidth, float _dispHeight){
		xCount = _xCount;
		yCount = _yCount;
		dispWidth = _dispWidth;
		dispHeight = _dispHeight;
		pixSize = 30;
		pixelArray = new Pixel[xCount][yCount];
		setPixLocs();
	}

	void setPixSize(float _pixSize){
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
		for (int i = 0; i<xCount; i++){
			for (int j = 0; j<yCount; j++){
				pixelArray[i][j].setLoc(xOffset*i+pixSize/2, yOffset*j+pixSize/2);
			}
		}
	}
}