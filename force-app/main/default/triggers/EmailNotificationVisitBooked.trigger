trigger EmailNotificationVisitBooked on Visit__c (after insert) {
    for (Visit__c visit: Trigger.new){
        EmailManager emailManager = new EmailManager();
        String recipientEmail = visit.Animal__r.Account__r.Email__c;
        if (recipientEmail != null && visit.Visit_status__c == 'scheduled'){
            DateTime visitDateTime = visit.Date_of_visit__c;
            String emailSubject = 'The visit has been booked';
            String emailBody = 'Your visit on' + visitDateTime.date() + ' at the' + visitDateTime.time() + ' has been booked.';
            try {
                EmailManager.sendMail(recipientEmail, emailSubject, emailBody);
                System.debug('Email send to ' + recipientEmail + ' with subject ' + emailSubject + ' and context ' + emailBody);
            } catch (Exception except){
                System.debug('An error ocurred while sending email: ' + except);
                }
        }
    }
}