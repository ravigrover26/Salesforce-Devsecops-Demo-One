trigger CaseTrigger on SOBJECT (before insert) {
    CaseTriggerHandler handler = new CaseTriggerHandler();
    handler.onBeforeInsert(Trigger.new);
    handler.onBeforeUpdate(Trigger.new);
}