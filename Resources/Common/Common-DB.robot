*** Settings ***
Documentation  This file configures database connection and actions data related such as Select and Update
Library  DatabaseLibrary
Library  String
Library  Dialogs
Library  Process

*** Variables ***
# Dummy data to demonstrate database connection
${DB} =  psycopg2  #postgreSQL
${DB_NAME} =  db_name
${DB_USER_NAME} =  user_name
${DB_USER_PASSWORD} =  user_pwd
${DB_HOST} =  192.168.1.111
${DB_PORT} =  1111

*** Keywords ***
Open database connection
    Connect to database  ${DB}  ${DB_NAME}  ${DB_USER_NAME}  ${DB_USER_PASSWORD}  ${DB_HOST}  ${DB_PORT}

Verify if user exists
    [Arguments]  ${user}
    ${queryReturn} =  Query  SELECT login FROM users WHERE login LIKE '${user}';
    ${isNotEmpty} =  Run Keyword And Return Status  Should Not Be Equal  ${queryReturn[0][0]}  None
    Run Keyword If  ${isNotEmpty}
    ...  Return From Keyword  ${queryReturn[0][0]}
    ...  ELSE  Return From Keyword  False

Close database connection
    Disconnect From Database