public with sharing class CaseTriggerHandler {
    public CaseTriggerHandler() {
        System.debug('CaseTriggerHandler constructor');
        System.debug('CaseTriggerHandler constructor');
        System.debug('CaseTriggerHandler constructor');
    }
    // This method is called from the CaseTrigger
    public void onBeforeInsert(List<Case> newCases) {
        // Call the method to set the case origin
        setCaseOrigin(newCases);
    }
    // This method is called from the CaseTrigger
    public void onBeforeUpdate(Map<Id, Case> newMapCases, Map<Id, Case> oldMapCases) {
        // Call the method to set the case origin
        setCaseOrigin(newMapCases);
    }
}