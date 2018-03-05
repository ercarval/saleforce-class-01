/**
 * @author ercarval
 */
public with sharing class CustomerRepository {

    public CustomerRepository() {

    }

    // [ modificadores ] <Tipo> <nomeDoMetodo> ( [Paramentros...] ) {}
    public List<Account> findByName (String name) {
        return [SELECT Id, Name, Type, RecordTypeId, RecordType.Name
                , RecordType.DeveloperName , OwnerId, Owner.name
                , BillingStreet, BillingCity, BillingState, BillingPostalCode
                , CreatedById,  Phone, Fax, AccountNumber
                , ErpId__c
                FROM Account
                WHERE Name = :name ];

    }

    public Account create (Account account) {

        insert account;

        return account;
    }

    public List<Account> create (List<Account> accounts) {

        insert accounts;

        return accounts;
    }

    public Account store (Account account) {

        update account;

        return account;
    }




}