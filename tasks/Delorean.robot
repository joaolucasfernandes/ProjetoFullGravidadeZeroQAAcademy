*** Settings ***
Documentation       Delorean

Resource    ../resource/Database.robot

*** Tasks ***
Back To The Past
    Connect To Postgress
    Reset Env
    Disconnect From Database