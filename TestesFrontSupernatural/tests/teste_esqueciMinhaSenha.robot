*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${URL}            https://automacao.qacoders-academy.com.br/login
${BROWSER}        chrome
${DELAY}          5s
${FORGOT_PASSWORD_URL}    https://automacao.qacoders-academy.com.br/forgot-password

*** Keywords ***
Passo 1 - Abrir o Navegador
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    
Passo 2 - Verifica se contém o elemento Esqueci minha Senha  
    Wait Until Page Contains Element    //a[@class='css-rpkgv3'][contains(.,'Esqueci minha senha')]    timeout=${DELAY}
    
Passo 3 - Clica no elemento Esqueci minha senha    
    Click Element    //a[@class='css-rpkgv3'][contains(.,'Esqueci minha senha')]
    
 Passo 4 - Valida redirecionamento para outra página
    Wait Until Page Contains    ${FORGOT_PASSWORD_URL}    timeout=${DELAY}
    Capture Page Screenshot    nome_do_screenshot.png
   
Passo 5 - Fecha o Navegador 
    Close Browser


*** Test Cases ***
Teste de clique no link "Esqueci minha senha"
   Passo 1 - Abrir o Navegador
   Passo 2 - Verifica se contém o elemento Esqueci minha Senha 
   Passo 3 - Clica no elemento Esqueci minha senha
   Passo 4 - Valida redirecionamento para outra página
   Passo 5 - Fecha o Navegador