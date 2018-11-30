class ParkingStallSection {
  float x_pos = 0;
  float y_pos = 0;
  ParkingStallSection(float x, float y) {
    x_pos = x;
    y_pos = y;
  }
  
  ParkingStall [][] lot = new ParkingStall [2][5];
  void drawSection () {
    float start = x_pos;
    for (int i = 0; i<2; i++) {
      for (int j = 0; j<5; j++) {
        lot[i][j] = new ParkingStall ( x_pos, y_pos, 105, 65);
        x_pos+=105;
        lot[i][j].drawStall();
      }
      x_pos=start;
      y_pos+=65;
    }
  }
  void drawMoreSect() {
    for (int i = 0; i<2; i++) {
      for (int j = 0; j<5; j++) {
        x_pos+=105;
        lot[i][j].drawStall();
      }
    }
  }

  int filled_lots () {
    int zing=0;
    for (int i = 0; i<2; i++) {
      for ( int j = 0; j<5; j++) {
        if (lot[i][j].occupied==false) {
          zing++;
        }
      }
    }
    return zing;
  }
}