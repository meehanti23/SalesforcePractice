@isTest
public class FitnessTest {
	@isTest
    public static void caluclateBMITest1() {
		Decimal weight = 60;
        Decimal height = 1.2;
        
        Decimal result = Fitness.calculateBMI(weight, height);
        result = result.setScale(2);
        System.assertEquals(41.67, result, 'BMI should be 41.67 for 60kg weight and 1.2 mtr height');
    }
    
    @isTest
    public static void caluclateBMITest2() {
		Decimal weight = 0;
        Decimal height = 1.2;
        
        Decimal result = Fitness.calculateBMI(weight, height);
        result = result.setScale(2);
        System.assertEquals(0, result, 'BMI should be 0 for 0kg weight and 1.2 mtr height');
    }
    
    @isTest
    public static void caluclateBMITest3() {
		Decimal weight = 60;
        Decimal height = 0;
        
        Decimal result = Fitness.calculateBMI(weight, height);
        result = result.setScale(2);
        System.assertEquals(-1, result, 'Invalid Input');
    }
    
    @isTest
    public static void caluclateBMITest4() {
		Decimal weight = -60;
        Decimal height = 1.2;
        
        Decimal result = Fitness.calculateBMI(weight, height);
        result = result.setScale(2);
        System.assertEquals(-1, result, 'Invalid Input');
    }
    
    @isTest
    public static void caluclateBMITest5() {
		Decimal weight = 60;
        Decimal height = -1.2;
        
        Decimal result = Fitness.calculateBMI(weight, height);
        result = result.setScale(2);
        System.assertEquals(-1, result, 'Invalid Input');
    }
    
    @isTest
    public static void caluclatePaceTest1() {
		Decimal distance = 10;
        Decimal minutes = 60;
        
        Decimal result = Fitness.calculatePace(distance, minutes);
        result = result.setScale(2);
        System.assertEquals(10, result, 'Pace should be 10km/hr for 10km in 60 minutes');
    }
    
      @isTest
    public static void caluclatePaceTest2() {
		Decimal distance = 10;
        Decimal minutes = 0;
        
        Decimal result = Fitness.calculatePace(distance, minutes);
        result = result.setScale(2);
        System.assertEquals(-1, result, 'Invalid Input');
    }
}