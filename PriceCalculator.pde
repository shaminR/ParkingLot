class PriceCalculator {
  int hourTotal=0;
  float profit=0;
  int stallUse=0;
  int minutes=0;
  int hours=0;
  float mon_sat=3.0;
  float sun=1.5;
  
  Date currentDate = new Date (5, 6, 0, false);
  
  int day;
  int hour;
  int minute; 
  boolean morn;
  float profits=0;

  PriceCalculator(Date d) {
    day=d.today;
    hour=d.hour;
    minute=d.minute;
    morn=d.before_noon;
  }

  int time1() {                                     
    minutes++;
    currentDate.addMinute();
    if (minutes%3600==0) {
      hours++;
      
      currentDate.addHour();
    }
    return (hours);
  }

  void time() {                             //keep track of how many hours has passed
    minutes++;
    currentDate.addMinute();
    if (minutes%60==0) {
      hours++;
      currentDate.addHour();
    }
  }
  float totalProfit() {                //calculates profit
    int stalls = Counters();
    float dayRate = rateCheck();
    return hours*stalls*dayRate;
  }
  int Counters() {                  //checks how many stalls are being used
    stallUse=60-lotz.filled_section();
    return stallUse;
  }
  float rateCheck() {          //checks date and returns correct fee
    if (day>=0 && day<=5)
    {
      return mon_sat;
    } else {
      return sun;
    }
  }
}