public class Car {
    //public variable defined directly inside class
    //this can be accessed outside of class
    public string carColor = ' ';
    public string carName = ' ';
    //private variable
    //this can only be accessed within the class
    private integer maxSpeedKMperHour = 150;
    //method demo
    public void switchOn(){
        system.debug('starting the car.');

    }
    public void drive(){
        system.debug('driving ' + carName);
    }
    public void driveAtMaxSpeed(){
        string drivingDescription = 'driving ' + carName + ' at ' + maxSpeedKMperHour + ' km/h ';
        system.debug(drivingDescription);
    }
}