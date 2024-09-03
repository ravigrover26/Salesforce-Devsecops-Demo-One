public with sharing class AccountTriggerHandler {
    public AccountTriggerHandler() {

    }
    public void onBeforeInsert(List<Account> newList) {
        for(Account acc : newList) {
            acc.Description = 'Before Insert Trigger';
        }
    }
}