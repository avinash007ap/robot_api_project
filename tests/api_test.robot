*** Settings ***
Library    RequestsLibrary
Library    ../libraries/custom_api.py

*** Variables ***
${BASE_URL}    https://jsonplaceholder.typicode.com

*** Test Cases ***
Check Posts Status With RequestsLibrary
    Create Session    api    ${BASE_URL}
    ${response}=    Get Request    api    /posts
    Status Should Be    200

Check Status Code With Custom Python Library
    ${status}=    Get Status    ${BASE_URL}/posts
    Should Be Equal As Numbers    ${status}    200
