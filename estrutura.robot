*** Settings ***

Library    SeleniumLibrary


*** Variables ***


*** Keywords ***
abrir site google
    Open Browser    https://google.com.br     chrome 
fechar navegador  
    Close Browser

abrir site globo
    Open Browser    https://www.globo.com/    chrome


*** Test Cases ***
Cenário 1: Abrir site google
    abrir site google
    fechar navegador
    

Cenário 2: Abrir site da globo
    abrir site globo
    fechar navegador