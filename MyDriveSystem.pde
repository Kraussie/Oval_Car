class MyDriveSystem extends DriveSystem {
  MyDriveSystem(Car myCar) {
    super(myCar);
    noSense=0;
  }
  void drive() {
    int laneChange = 0; //stay in lane = 0, change lane = 1
    int line = 1; //left-most line = 0, right-most line = 1
    int svr=myCar.sensorValueRight;
    int svl=myCar.sensorValueLeft;

    if (laneChange == 0) {
      //OUTSIDE LANE
      if (line == 0) {
        //if car needs to follow left most line
        myCar.setLeftSpeed(25);
        myCar.setRightSpeed(int(map(svl, 0, 150, 55, 25)));
      } else if (line == 1) {
        //if car needs to follow right most line
        myCar.setRightSpeed(25);
        myCar.setLeftSpeed(int(map(svr, 0, 150, 55, 25)));
      }
    } else if (laneChange == 1) {
     //add lane change code here 
    }
  }
}
