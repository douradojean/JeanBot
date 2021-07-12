*** Settings ***
Documentation     Automacao das outras funçoes

Resource          resources.robot

Suite Setup       Acessar site
Suite Teardown    Fechar navegador

*** Test Cases ***
Upload de arquivos
    Acessar upload de arquivos
    Validar upload de arquivos
    Retornar tela inicial

Basic Auth
    Acessar basic Auth
    Validar basic Auth