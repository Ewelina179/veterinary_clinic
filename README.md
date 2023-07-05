# An application for managing a veterinary clinic.

## General info
The functionalities of the application relate to patient management and appointment scheduling.
<br>
<br>
Patient data storage
- information about the patient (age, gender, race)
- contact details of the guardian
- information about vaccinations, allergies, additional notes
- history of visits
and schedule of visits
- booking appointments and assigning to a doctor

The following triggers have been implemented in the application:
- canceling scheduled appointments if the patient dies, using a bulk design pattern
- to do: email notification confirming the visit (to do)

  and validation rules:
- to do: prevent assigning a doctor to two visits at the same time.

The application contains custom objects, including the AnimalMedicine junction object showing the use of drugs in individual patients.

# To do

- Unit tests for triggers.
- For educational purposes, creating an endpoint that provides information about the drugs available at the clinic and sharing the collection in Postman for this endpoint.
- Using the App Builder to change the interface.
- Using Process Builder to generate reminders about upcoming visits.
- Generating reports on the drugs used.
- The ability to attach documents to the profile, e.g. an X-ray scan.