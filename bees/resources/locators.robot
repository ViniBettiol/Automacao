*** Settings ***
Library                    SeleniumLibrary
Resource                   resources.robot
Resource                   helpers.robot

*** Variables ***
${BROWSER}                         chrome
${URL}                             https://www.amazon.com.br/
${TITLE}                           Amazon.com.br | Compre livros, Kindle, Echo, Fire Tv e mais.
${BOTAO_LOGIN_HOME}                //*[@id="nav-link-accountList-nav-line-1"]
${CAMPO_EMAIL}                     //*[@id="ap_email"]
${BOTAO_PROSSEGUIR}                //*[@id="continue"]
${CAMPO_SENHA}                     //*[@id="ap_password"]
${BOTAO_LOGAR}                     //*[@id="signInSubmit"]
${SPAM_ERROR}                      //*[@id="auth-error-message-box"]/div
