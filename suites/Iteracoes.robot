*** Settings ***
Documentation     Automacao das iteracoes

Resource          resources.robot

Suite Setup       Acessar site
Suite Teardown    Fechar navegador

*** Test Cases ***
Drag and drop
    Acessar drag and drop
    Validar drag and drop
    Retornar tela inicial

Mousehover
    Acessar mousehover
    Validar mousehover
    Retornar tela inicial
