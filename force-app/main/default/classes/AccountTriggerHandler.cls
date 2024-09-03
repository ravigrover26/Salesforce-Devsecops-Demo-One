public with sharing class AccountTriggerHandler {
    public AccountTriggerHandler() {

    }
    public void onBeforeInsert(List<Account> newList) {
        for(Account acc : newList) {
            acc.Description = 'Before Insert Trigger';
        }
    }
    // create a method onBeforeUpdate
    public void onBeforeUpdate(List<Account> newList, Map<Id, Account> oldMap) {
        for(Account acc : newList) {
            Account oldAccount = oldMap.get(acc.Id);
            if(acc.Name != oldAccount.Name) {
                acc.Description = 'Before Update Trigger';
            }
        }
    }
}