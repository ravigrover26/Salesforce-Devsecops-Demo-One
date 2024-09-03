trigger AccountTrigger on Account (before insert) {
    AccountTriggerHandler handler = new AccountTriggerHandler();
    handler.onBeforeInsert(Trigger.new);
}