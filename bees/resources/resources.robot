*** Settings ***
Resource                   locators.robot
Resource                   helpers.robot
Library                    SeleniumLibrary

*** Variables ***

*** Keywords ***
#### Setup e Teardown
Abrir Navegador
    Open Browser           about:blank           ${BROWSER}

Fechar Navegador
    Close Browser

#### Passo-a-Passo
Acessar a página home do site
    Go to                     ${URL}
    Title Should Be           ${TITLE}
    Log to console            ***Tela 1
    Capture Page Screenshot

Clicar no botão para logar
    Sleep                  3
    Click Element          ${BOTAO_LOGIN_HOME}
    Log to console         ***Tela 2
    Capture Page Screenshot

Adicionar os dados do usuario
    Input Text             ${CAMPO_EMAIL}       ${EMAIL_CADASTRO}
    Log to console         ***Tela 3
    Capture Page Screenshot
    ClickElement           ${BOTAO_PROSSEGUIR}
    Sleep                  3
    Input Text             ${CAMPO_SENHA}       ${SENHA_CADASTRO}
    Log to console         ***Tela 4
    Capture Page Screenshot
    ClickElement           ${BOTAO_LOGAR}

Validar alerta de senha incorreta
    Log to console         ***Tela 5
    Wait Until Element Is Visible       ${SPAM_ERROR}
    Capture Page Screenshot