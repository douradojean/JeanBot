*** Keywords ***
Expande menu mudanca outros
    Wait Until Element Is Visible        xpath=/html/body/div[2]/div[1]/ul/li[6]/a                               10
    Click Element                        xpath=/html/body/div[2]/div[1]/ul/li[6]/a

Acessar upload de arquivos
    Expande menu mudanca outros
    Wait Until Element Is Visible        xpath=//a[@href="/outros/uploaddearquivos"]                             10
    Click Element                        xpath=//a[@href="/outros/uploaddearquivos"]
    Wait Until Element Is Visible        xpath=//html/body/div[2]/div[2]/div[2]/div/h5

Validar upload de arquivos
    Choose File                          id:upload                                                               ${IMAGE_DIR}//teste.png
    ${src}                               Get Element Attribute                                                   id:thumbnail                        src
    Should Not Be Equal As Strings       ${src}                                                                  \#

Acessar basic Auth
    Expande menu mudanca outros
    Wait Until Element Is Visible        xpath=//a[@href="/basicauth/home"]                                      10
    Click Element                        xpath=//a[@href="/basicauth/home"]
    Wait Until Element Is Not Visible    xpath=/html/body/div[2]/div[1]/h4                                       10

Validar basic Auth
    Go To                                http://admin:admin@automacaocombatista.herokuapp.com/basicauth/home/
    Wait Until Element Is Visible        xpath=/html/body/div[2]/div[2]/div[3]/div/img
    Element Text Should Be               xpath=/html/body/div[2]/div[2]/div[2]/div/h5                            Você se autenticou com sucesso!!