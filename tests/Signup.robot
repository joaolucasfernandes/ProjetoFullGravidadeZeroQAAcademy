*** Settings ***
Documentation    Signup Test Suite

Resource         ../resource/Base.robot

Test Setup       Start Session
Test Teardown    Finish Session

*** Test Cases ***
Register a new user

    ${user}        Factory User

    Go To Signup form
    Fill Signup Form    ${user}
    Submit Signup Form
    User Should Be Registered

Duplicate user
    [Tags]        dup_email

    ${user}                   Factory User
    Add User From Database    ${user}
    # ${user}        Factory User
    # Go To Signup form
    # Fill Signup Form    ${user}
    # Submit Signup Form
    # User Should Be Registered

    Go To Signup form
    Fill Signup Form    ${user}
    Submit Signup Form
    Modal Content Should Be    Já temos um usuário com o e-mail informado.