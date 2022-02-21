*** Settings ***

Documentation      Prova técnica Bees
...                Primeiro desafio
...                1. Escolha um site (sim, qualquer um);
...                2. Escolha uma funcionalidade desse site;
...                3. Escreva um caso de teste, em Gherkin, considerando um caminho infeliz e automatize-o utilizando Robot Framework
...                (https://robotframework.org/)
...                -Objetivo deste teste é não realizar o login com um e-mail cadastrado corretamente, porém passando uma senha
...                incorreta, validando o retorno do elemento exibindo a div com a mensagem de erro.

Resource                  ../resources/resources.robot
Resource                  ../resources/helpers.robot
Test Setup                Abrir Navegador
Test Teardown             Fechar Navegador


*** Test Case ***
Cenário 01: Login com senha Incorreta
    Dado que estou na página home do site
    Quando clico no campo para logar no site
    E preencho os dados do usuário
    Então devo receber o alerta de que a senha está incorreta


*** Keywords ***
Dado que estou na página home do site
    Acessar a página home do site

Quando clico no campo para logar no site
    Clicar no botão para logar

E preencho os dados do usuário
    Adicionar os dados do usuario

Então devo receber o alerta de que a senha está incorreta
    Validar alerta de senha incorreta

