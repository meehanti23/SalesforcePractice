public class Fitness {
    public static Decimal calculateBMI(Decimal bodyWeight, Decimal bodyHeight) {
        if(bodyHeight <= 0 || bodyWeight < 0) {
            return -1;
        } else {
        Decimal BMI = bodyWeight / (bodyHeight * bodyHeight);
        return BMI;
        }
    }
    
    public static Decimal calculatePace(Decimal distance, Decimal minutes) {
        if(distance < 0 || minutes <= 0) {
            return -1;
        } else {
        Decimal hr = minutes/60;
        Decimal kmPerHour = distance / hr;
        return kmPerHour;
        }
    }
}