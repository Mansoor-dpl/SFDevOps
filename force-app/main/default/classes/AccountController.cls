public with sharing class AccountController {
    public static List<Account> getAllActiveAccount1() {
      return [SELECT Id, Name, Active__c FROM Account WHERE Active__c = 'Yes' WITH SECURITY_ENFORCED];
    }
    //Lets see your solution in your orgs to end
  }