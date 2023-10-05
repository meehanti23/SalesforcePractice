@isTest
public class Covid19Test {
	
    @isTest
    public static void treatPatientTest() {
        Covid19 jaipur = new Covid19(10);
        
        Integer treated = jaipur.getTreated();
        // check if count is 10 or not
        System.assertEquals(10, treated, 'Treated count does not match');
        
        Covid19 hyd = new Covid19(112);
        Integer hydTreated = hyd.getTreated();
        System.assertEquals(112, hydTreated, 'Treated count does not match');
        
        // check the count of recoveredInCountry/ should be 122
        System.assertEquals(122, Covid19.recoveredInCountry, 'Treated count does not match');
        
        jaipur.treatPatient();
        treated = jaipur.getTreated();
        System.assert(treated == 11, 'Treated count does not match');
        System.assert(Covid19.recoveredInCountry == 123, 'Treated count does not match');
        
    }
}