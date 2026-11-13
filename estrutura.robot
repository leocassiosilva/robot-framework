*** Settings ***
Library          SeleniumLibrary
Library          String
# Resource       caminho/arquivo.resource    (também aceita .robot)
# Variables      caminho/arquivo.py          (também aceita .yaml, .json)

Test Setup       Log    Iniciando teste
Test Teardown    Log    Finalizando teste
Test Tags        exemplo
Documentation     Este é um exemplo de teste com Robot Framework

*** Variables ***
${variavel}    1

*** Keywords ***

*** Test Cases ***
Teste Fake
    Log To Console   {"mensagem": "Teste Fake", "variavel": "${variavel}"}
