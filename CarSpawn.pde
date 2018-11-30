class carSpawn {
  int car_index=0;
  float g = -100;
  int t;
  carSpawn ( int g) {
    t=g;
  }

  float randomNumber() {
    float number = g-(random(-300, -50));
    g-=300;
    return number;
  }

  car[] leaveCars = new car[5000];
  car[] allCars = new car[5000];
  void construct() {
    for (int x = 0; x<5000; x++) {
      allCars[x]=new car(randomNumber(), 4, true, false);
    }
  }

  void constructL() {
    for (int x = 0; x<5000; x++) {
      leaveCars[x]=new car(randomNumber(), 5, false, false);
    }
  }
  void drawCars() {
    for (int x =0; x<t; x++) {
      allCars[x].drawEnterCar();
    }
    for (int x =0; x<t; x++) {
      leaveCars[x].get_out();
    }
  }
}