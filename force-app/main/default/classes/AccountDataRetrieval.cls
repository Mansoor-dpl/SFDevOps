public class AccountDataRetrieval {

    public static List<Account> getAccounts() {
        // Query for accounts with non-null Phone, BillingState, and Rating
        List<Account> accounts = [SELECT Id, Name, Phone, BillingState, Rating FROM Account
                                  WHERE Phone != null AND BillingState != null AND Rating != null];

        return accounts;
    }
}
