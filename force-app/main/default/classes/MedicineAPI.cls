@RestResource(urlMapping='/medicines/')
global with sharing class MedicineAPI {
	@httpGet
    global static List<Medicine__c> getMedicines(){
        List<Medicine__c> medicines = [SELECT Name From Medicine__c];
        return medicines;
    }
}