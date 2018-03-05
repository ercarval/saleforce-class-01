/**
 * @author ercarval
 */
@isTest
public class CustomerTest {

    @isTest
    public static void givenAccountWhenCreateThenCustomerSucessfullyCreated () {

        Account account = new Account();
        account.Name = 'Bissolino';
        account.ErpId__c = 'Bis123456solino';

        Customer customer = new Customer();

        Account storedAccount = customer.getAll().create ( account );

        System.assert( account.Id != null );

    }


}