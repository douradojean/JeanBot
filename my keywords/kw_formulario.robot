*** Keywords ***
Expande menu Formulario
    Wait Until Element Is Visible    xpath=//html//body//div[2]//div[1]//ul//li[1]     10
    Click Element                    xpath=//html//body//div[2]//div[1]//ul//li[1]

Abre Formulario de cadastro
    Expande menu Formulario
    Wait Until Element Is Visible    xpath=//a[@href="/users/new"]                     10
    Click Link                       xpath=//a[@href="/users/new"]

Preenche Formulario
    ${file}=                         Load JSON From File                               ${DADOS_DIR}//usuario.json
    ${usuario}=                      Get Value From Json                               ${file}                       $..*
    ${usuario}                       convert to list                                   ${usuario}[0]

    Input Text                       id:user_name                                      ${usuario}[0]
    Input Text                       id:user_lastname                                  ${usuario}[1]
    Input Text                       id:user_email                                     ${usuario}[2]
    Input Text                       id:user_address                                   ${usuario}[3]
    Input Text                       id:user_university                                ${usuario}[4]
    Input Text                       id:user_profile                                   ${usuario}[5]
    Input Text                       id:user_gender                                    ${usuario}[6]
    Input Text                       id:user_age                                       ${usuario}[7]

    Click Element                    name:commit

Validar se usuario foi cadastrado com sucesso
    Wait Until Element Is Visible    id:notice                                         10
    Element Should Be Visible        xpath=/html/body/div[2]/div[2]/div[3]/div/a[1]

Retornar tela inicial
    Click Link                       xpath=//a[@href="/treinamento/home"]

Abrir listagem de Usuarios
    Expande menu Formulario
    Wait Until Element Is Visible    xpath=//a[@href="/users"]                         10
    Click Link                       /users

Verificar se listagem foi exibida
    Wait Until Element Is Visible    xpath=//a[@href="/treinamento/home"]              10
    Element Should Be Visible        xpath=//html/body/div[3]/div/table