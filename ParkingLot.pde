class ParkingLot {
  float x_position= 0;
  float y_position= 0;
  ParkingLot(float x, float y) {
    x_position=x;
    y_position=y;
  }
  ParkingStallSection [][] sect = new ParkingStallSection[3][2];
  void drawLot() {
    background(0, 58, 0);
    fill(95, 95, 95);
    stroke(255);
    rect(x_position-35, y_position-30, 1195, 495);
    noStroke();
    rect((1250/2)-40, 200, 75, 620);
    float xstart = x_position;
    float ystart = y_position;
    int shift =0;
    for (int i =0; i<3; i++) {
      for (int j =0; j<2; j++) {
        sect[i][j] = new ParkingStallSection (x_position, y_position);
        sect[i][j].drawSection();
        x_position+=600;
      }
      y_position+=150;
      x_position=xstart;
      shift++;
      if (shift>=3) {
        y_position=ystart;
      }
    }
  }

  void drawMore() {
    for (int i =0; i<3; i++) {
      for (int j =0; j<2; j++) {
        sect[i][j].drawMoreSect();
      }
    }
  }
  void drawLot1() {
    background(#319D37);
    fill(#838383);
    stroke(255);
    rect(x_position-35, y_position-30, 1195, 495);
    stroke(255);
    strokeWeight(4);
    rect((1250/2)-40, 200, 75, 620);
  }
  int filled_section() {
    int fullSect=0;
    for (int i = 0; i<3; i++) {
      for ( int j = 0; j<2; j++) {
        fullSect+=sect[i][j].filled_lots();
      }
    }  
    return fullSect;
  }
}