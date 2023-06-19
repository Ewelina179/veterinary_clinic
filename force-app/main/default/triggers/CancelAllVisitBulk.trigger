trigger CancelAllVisitBulk on Animal__c (after update) {
    for (Animal__c animal : Trigger.new) {
        if (animal.is_alive__c == false) {
        List<Visit__c> relatedVisits = [Select Id, Visit_status__c FROM Visit__c WHERE Animal__r.Id =:animal.Id];
        List<Visit__c> visitsToUpdate = new List<Visit__c>();
        for (Visit__c visit: relatedVisits){
            if (visit.Visit_status__c == 'scheduled'){
                visit.Visit_status__c = 'canceled';
                visitsToUpdate.add(visit);
            }
        }
        update visitsToUpdate;
    }
}
}