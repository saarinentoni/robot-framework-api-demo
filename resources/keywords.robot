*** Settings ***
Library    RequestsLibrary

*** Variables ***
${BASE_URL}    https://jsonplaceholder.typicode.com

*** Keywords ***
Create Session To JsonPlaceholder
    Create Session    jp    ${BASE_URL}    verify=${True}