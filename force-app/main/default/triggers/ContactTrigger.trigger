trigger ContactTrigger on Contact (after insert, after update, after delete, after undelete) {
    switch on Trigger.operationType {
        when AFTER_INSERT {
            for(Contact con : Trigger.new){
                if(String.isNotBlank(con.AccountId)) {
                    String accountId = con.AccountId;
                    List<AggregateResult> results = [SELECT AccountId, COUNT(Id) totalContacts FROM Contact WHERE Active__c = true AND AccountId =:accountId GROUP BY AccountId];
                    for(AggregateResult result : results) {
                        String accId = String.valueOf(result.get('AccountId'));
                        Integer totalContacts = Integer.valueOf(result.get('totalContacts'));

                        Account acc = new Account(Id = accId, Active_Contacs__c = totalContacts);
                        update acc;
                    }
                }
            }
        }
    }
}