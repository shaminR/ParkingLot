class ParkingStall {
  int tCurrent;
  float fee=0;
  int stayTime;
  boolean occupied; 
  Date timeTaken; 
  float stallWidth; 
  float stallHeight; 
  float posX; 
  float posY; 

  ParkingStall(float x, float y, float a, float b ) {
    posX = x; 
    posY = y; 
    stallWidth = a; 
    stallHeight = b;
    occupied=false;
  }
  void statusCheck(boolean status)
  {
    occupied = status;
  }
  void feeAdd() {
    float perHour=p.rateCheck();
    fee = perHour*stayTime;
  }
  void drawStall() {
    if (occupied) {
      fill(color(255, 90, 71)); // RED STALL
    } else {
      fill(color(152, 251, 152)); // GREEN STALL
    }
    strokeWeight(3); 
    stroke(255); 
    rect(posX, posY, stallWidth, stallHeight); 
    strokeWeight(1);
    if (occupied && p.time1()-tCurrent==stayTime) {
      occupied =false;
      p.profits+=fee;
      Cars.leaveCars[Cars.car_index].leaving=true;
      ;
    }
  }
}