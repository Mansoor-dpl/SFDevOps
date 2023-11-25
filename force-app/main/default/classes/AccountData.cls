public class AccountData {
    
    public class AccountData {
        public String id;
        public String name;
        public String phone;
        public String billingState;
        public String rating;
    }

    public static List<AccountData> AccountData(String xmlContent) {
        List<AccountData> accountList = new List<AccountData>();
        
        Dom.Document doc = new Dom.Document();
        doc.load(xmlContent);

        // Assuming the XML structure is something like <Accounts><Account>...</Account></Accounts>
        Dom.XmlNode rootElement = doc.getRootElement();

        for (Dom.XmlNode accountNode : rootElement.getChildElements()) {
            AccountData acc = new AccountData();
            acc.id = accountNode.getChildElement('Id', null).getText();
            acc.name = accountNode.getChildElement('Name', null).getText();
            acc.phone = accountNode.getChildElement('Phone', null).getText();
            acc.billingState = accountNode.getChildElement('BillingState', null).getText();
            acc.rating = accountNode.getChildElement('Rating', null).getText();
            
            accountList.add(acc);
        }

        return accountList;
    }
}
