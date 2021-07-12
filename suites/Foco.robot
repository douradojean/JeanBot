*** Settings ***
Documentation     Automacao de mudança de foco

Resource          resources.robot

Suite Setup       Acessar site
Suite Teardown    Fechar navegador

*** Test Cases ***
Alert
    Acessar alertas
    Validar JS alert
    Validar JS confirm
    Validar JS prompt

Janela
    Acessar janelas
    Validar abertura de nova janela
    Retornar tela inicial

Modal
    Acessar Modal
    Validar exibicao do modal
    Retornar tela inicial