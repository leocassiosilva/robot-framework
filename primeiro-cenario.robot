*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${nome}    João
${sobrenome}    Silva
${email}    joaosilva1234@gmail.com
${telefone}    1234567890

*** Keywords ***
Abrir o navegador e acessar o site
    Set Selenium Speed    value=0.5s
    Open Browser  browser=firefox    url=https://demoqa.com/automation-practice-form
Escrever Nome
    Input Text  locator=firstName  text=${nome}
Escrever Sobrenome
    Input Text  locator=lastName  text=${sobrenome}

Fechar o navegador
    Close Browser

Escrever Email
    Input Text  locator=userEmail  text=${email}
    
Escrever Telefone
    Input Text  locator=userNumber  text=${telefone}

Selecionar Gênero Feminino
    Click Element  locator=gender-radio-2


*** Test Cases ***

TC01 - Escrever Nome e Sobrenome
    Abrir o navegador e acessar o site
    Escrever Nome
    Escrever Sobrenome
    Fechar o navegador

TC02 - Escrever Nome, Sobrenome e Email
    Abrir o navegador e acessar o site
    Escrever Nome
    Escrever Sobrenome
    Escrever Email
    Fechar o navegador
    
TC03 - Escreve nome, sobrenome, email e telefone
    Abrir o navegador e acessar o site
    Escrever Nome
    Escrever Sobrenome
    Escrever Email
    Escrever Telefone
    Fechar o navegador


*** Comments ***


TC04 - Clicar no gênero Feminino
    Abrir o navegador e acessar o site
    Selecionar Gênero Feminino
    Fechar o navegador