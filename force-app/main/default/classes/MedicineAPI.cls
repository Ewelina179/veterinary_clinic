@RestResource(urlMapping='/medicine/')
global with sharing class MedicineAPI {
	@httpGet
    global static String doGet(){
        return 'List of medicines';
    }
}