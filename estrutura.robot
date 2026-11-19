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

Abrindo o navegador e acessar site
    Open Browser    browser=chrome    url=https://demoqa.com/automation-practice-form

Escrever o nome no campo no campo first name
    Input Text    id=firstName    ${variavel2}
    Aguardando 5 segundos e fecha o navegador

Aguardando 5 segundos e fecha o navegador
    Sleep    time_=5s
    Close Browser


*** Test Cases ***

Meu primeiro caso de teste 
    Abrindo o navegador e acessar site
    Escrever o nome no campo no campo first name

# Meu Segundo caso de teste
#     Open Browser    browser=chrome    url=https://demoqa.com/automation-practice-form
#     # Sleep    time_=10s
#     Input Text    id=firstName    ${variavel2}
#     Sleep    time_=10s


# Meu Terceiro caso de teste
#     Open Browser    browser=chrome    url=https://demoqa.com/automation-practice-form
#     # Sleep    time_=10s
#     Input Text    id=firstName    ${variavel3}
#     Sleep    time_=10s
    

# Teste Fake
    # Log To Console   {"mensagem": "Teste Fake", "variavel": "${variavel}"}
    # Log To Console   {"mensagem": "Teste Fake", "variavel": "${variavel2}"}
    # Log To Console   {"mensagem": "Teste Fake", "variavel": "${variavel3}"}
    # Log To Console     ${lista}
    # Log To Console     ${lista[1]}

    # Log To Console     ${lista2}
    # Log To Console     ${dicionario}
    # Log To Console     ${dicionario.chave}
    # Log To Console     ${pessoa.nome}