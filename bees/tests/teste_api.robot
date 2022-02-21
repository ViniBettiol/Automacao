*** Settings ***

Documentation      Prova técnica Bees
...                Segundo desafio
...                1. Considere a documentação da seguinte RESTful API https://www.petfinder.com/developers/v2/docs/#introduction
...                2. Escolha um Endpoint documentado;
...                3. Escreva dois casos de teste, em Gherkin, considerando um caminho feliz e um infeliz.

#Pré-Requisito: Realizar uma chamada onde se recebe o Bearer Token para próximas etapas de execuções na API.
#        curl --location --request POST 'https://api.petfinder.com/v2/oauth2/token' \
#        --header 'Content-Type: application/x-www-form-urlencoded' \
#        --data-urlencode 'grant_type=client_credentials' \
#        --data-urlencode 'client_id=zM6sjRIOMhDzZ7kPtWKKZD5FvbParv1Gtp7CerFfrSxeiRz37z' \
#        --data-urlencode 'client_secret=9nLiZDS5xiuLkeYiOi6aMf8oBXk9AJAPzzSvb4B6'

*** Test Case ***
#Validar o retorno das Raças de Cachorros cadastrados no sistema
Cenário1: Realizar uma pesquisa onde se retorna as raças de cachorros cadastrado no sistema
    Dado que possuo o correto token de acesso liberado no sistema
    E possuo link correto para realizar a busca (https://api.petfinder.com/v2/types/dog/breeds)
    Quando disparo a chamada para o sistema
    Então recebo como resposta STATUS 200 e uma array com as raças cadastradas no sistema
    E valido se a resposta é um array de arrays com as raças cadastradas

#Validar o retorno das Organizações/Instiruições cadastrados no sistema
Cenário2: Realizar uma pesquisa onde não encontro o Organização/Instituição através do ID
    Dado que possuo o correto token de acesso liberado no sistema
    E possuo link correto para realizar a busca (https://api.petfinder.com/v2/organizations/$id)
    Quando disparo a chamada para o sistema com o campo ID incorreto 
    Então recebo como resposta STATUS 400 com os campos "title" e "detail" como "Not Found".



