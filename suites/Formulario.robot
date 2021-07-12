*** Settings ***
Documentation     Automacao de formulários

Resource          resources.robot

Suite Setup       Acessar site
Suite Teardown    Fechar navegador

*** Test Cases ***
Cadastrar usuario
    Abre Formulario de cadastro
    Preenche Formulario
    Validar se usuario foi cadastrado com sucesso
    Retornar tela inicial

Listar Usuarios
    Abrir listagem de Usuarios
    Verificar se listagem foi exibida
    Retornar tela inicial
