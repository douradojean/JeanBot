*** Settings ***
Documentation     Automacao de busca de elementos

Resource          resources.robot

Suite Setup       Acessar site
Suite Teardown    Fechar navegador

*** Test Cases ***
Validar links
    Acessar links
    Validar todos os links

Validar Inputs e Textfield
    Acessar inputs e Textfield
    Preehcer inputs e Textfield
    Validar classes inputs e Textfield

Validar botoes
    Acessar botoes
    Clicar botoes
    Validar mensagem botoes

Validar Radio e checkbox
    Acessar radio e checkbox
    Selecionar radio e checkbox
    Validar todos os radios e checkbox

