*** Settings ***
Library    RequestsLibrary

*** Keywords ***
Create Session To JsonPlaceholder
    Create Session    jp    https://jsonplaceholder.typicode.com    verify=${True}