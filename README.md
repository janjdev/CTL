# CTL
CTL Database/Participant tracking Project
**Below are the parameters for the Fall 2023**

**CMP SCI 5500 CTL Database/Participant tracking Project**

Overall Explanation

The UMSL Center for Teaching and Learning currently uses individual Google Forms which populate individual Google Sheets for their event and program registrations. Thus each program or event has a separate Google Sheet with the attendees' details. We are often asked for data on faculty participation in our programs or for details on contact hours with faculty. These reports are very cumbersome to generate given our current decentralized way that we track participation. We would like to have one single database that tracks all faculty engagement and participation with the CTL. This would both make reporting easier and make it easier for faculty participants in our programs to see all the program options together in one location.

We previously started a similar project using a database tool called Knack. However, due to the pandemic we had insufficient staff time to complete the project and so it was abandoned at that time. Some preliminary documentation from that work is available and will be provided (see Project Resources below).

Project Resources

- See the document "_CTL Database Structure\_2020_" for a list of needed fields and possible table structure.
- We can also provide some sample data to be used for populating and testing the draft versions of the database.
  - ....
  
Objectives

- Convert existing individual Google Forms and Google Sheets used for CTL event registration and attendance tracking into one user friendly registration system that allows simple front-end access for UMSL faculty and reporting capability for CTL staff.

Base Requirements

- Web interface that allows UMSL faculty to register for current CTL events and programs (see document "_CTL Database Structure\_2020"_ for fields that would need to be on that web interface).
- Populates a database with registration details from the web interface.
- Emails confirmation to faculty registrants when signing up for an event or program.
- Allows CTL staff to enter event/program attendance into the database.
- Allows CTL staff to run attendance reports by individual faculty, department, or college.

Optional Requirements

- Include a look up for faculty to see if they already have a record in the People table or if they need to create a new one before registering.
- Cloud storage of database for easy access.
- Also track faculty consultations with CTL staff.
- Ability to automate start and end dates of registration by event.
- Advanced ability to pull faculty names from existing databases such as PeopleSoft and utilize SSO ID for login upon registration.

Deployment

- This should have a web interface and server storage. This might require consideration for a future stage of this project as this would have security and cost implications at this time.
