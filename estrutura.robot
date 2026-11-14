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
${variavel}    carro
${variavel2}    moto
${variavel3}    bicicleta

#Criando uma lista
@{lista}    carro    moto    bicicleta
@{lista2}   ${variavel}    ${variavel2}    ${variavel3}

&{dicionario}
...    chave=valor
...    chave2=valor2
...    chave3=valor3

&{pessoa}
...    nome=João
...    idade=30
...    cidade=São Paulo
...    profissao=Engenheiro
*** Keywords ***

*** Test Cases ***
Teste Fake
    # Log To Console   {"mensagem": "Teste Fake", "variavel": "${variavel}"}
    # Log To Console   {"mensagem": "Teste Fake", "variavel": "${variavel2}"}
    # Log To Console   {"mensagem": "Teste Fake", "variavel": "${variavel3}"}
    # Log To Console     ${lista}
    # Log To Console     ${lista[1]}

    # Log To Console     ${lista2}
    # Log To Console     ${dicionario}
    # Log To Console     ${dicionario.chave}
    Log To Console     ${pessoa.nome}