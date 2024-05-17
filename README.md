# README BACKEND PATIENT REGISTRATION

## Getting Started

1. Clone the repository from Github on your computer.
2. Modify the docker.compose.yml and config/database.yml files with your database data
3. To run the application you need to have Docker installed on your machine, then run the following command:

   - docker-compose up --build
     
4. To administrate mysql database i use DBeaver 
<img width="400" alt="Screen Shot 2024-05-16 at 20 34 35" src="https://github.com/julietaper/backend_patient_registration/assets/70965839/8356410e-a7e1-4b0b-b4c5-79c03e1019e9">

5. To congif Mailtrap to send the confirmation email you hace to modify the developmen.rb file and enter your mailtrap account information 
<img width="490" alt="Screen Shot 2024-05-16 at 20 30 25" src="https://github.com/julietaper/backend_patient_registration/assets/70965839/38a0f215-ef68-4c62-8e21-ababaed79437">


## Evidence 

1. In postman with the url http://0.0.0.0:3000/api/patients you can create a patient. The body should look something like this:
<img width="782" alt="Screen Shot 2024-05-16 at 20 49 41" src="https://github.com/julietaper/backend_patient_registration/assets/70965839/04b060cf-ff29-4a0f-b013-905144f3762b">

   
2. The information of the patient must have the followig validations
<img width="655" alt="Screen Shot 2024-05-16 at 20 19 36" src="https://github.com/julietaper/backend_patient_registration/assets/70965839/3b614720-24a3-4bd0-84e8-9d704d06a503">

3. If the patient registered successfully, a confirmation email is sent. I use Mailtrap, in the console you can see the email
<img width="800" alt="Screen Shot 2024-05-16 at 20 25 01" src="https://github.com/julietaper/backend_patient_registration/assets/70965839/0bd942c7-2e07-4ee4-be65-be2ffaba9f80">

4. In DBeaver you can see the patients already created
<img width="500" alt="Screen Shot 2024-05-16 at 20 37 10" src="https://github.com/julietaper/backend_patient_registration/assets/70965839/7d9d47f9-1ff7-4b5f-aeb9-43e9b0660d4a">

## Specifications 

- Taking into account that in the future other types of notifications like SMS will be added. I create a service where the emails are currently located but in the future you could simply add notifications by SMS.
