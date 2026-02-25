*** Settings ***
Documentation     API tests using RequestsLibrary
Library           RequestsLibrary
Library           Collections
Resource          ../resources/keywords.robot
Suite Setup       Create Session To JsonPlaceholder

*** Test Cases ***
Get posts returns 200 and has items
    [Tags]    smoke    regression
    ${resp}=    GET On Session    jp    /posts
    Should Be Equal As Integers    ${resp.status_code}    200
    ${data}=    Set Variable    ${resp.json()}
    Should Be True    ${data.__len__()} > 0

Get single post has expected keys
    [Tags]    regression
    ${resp}=    GET On Session    jp    /posts/1
    Should Be Equal As Integers    ${resp.status_code}    200
    ${data}=    Set Variable    ${resp.json()}
    Dictionary Should Contain Key    ${data}    userId
    Dictionary Should Contain Key    ${data}    id
    Dictionary Should Contain Key    ${data}    title
    Dictionary Should Contain Key    ${data}    body

Create post returns 201
    [Tags]    regression
    &{payload}=    Create Dictionary    title=robot    body=framework    userId=1
    ${resp}=    POST On Session    jp    /posts    json=${payload}
    Should Be Equal As Integers    ${resp.status_code}    201