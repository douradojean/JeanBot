*** Settings ***
Documentation     Automacao das outras funçoes

Resource          resources.robot

Suite Setup       Acessar site
Suite Teardown    Fechar navegador

*** Test Cases ***
Accordion
    Acessar accordion
    Validar accordion
    Retornar tela inicial
