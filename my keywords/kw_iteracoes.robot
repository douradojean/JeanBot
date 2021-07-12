*** Keywords ***
Expande menu iteracoes
    Wait Until Element Is Visible        xpath=/html/body/div[2]/div[1]/ul/li[5]/a                           10
    Click Element                        xpath=/html/body/div[2]/div[1]/ul/li[5]/a

Acessar drag and drop
    Expande menu iteracoes
    Wait Until Element Is Visible        xpath=//a[@href="/iteracoes/draganddrop"]                           10
    Click Element                        xpath=//a[@href="/iteracoes/draganddrop"]
    Wait Until Element Is Visible        xpath=/html/body/div[2]/div[2]/div[2]/div/h5

Validar drag and drop
    Drag And Drop                        id:winston                                                          id:dropzone
    Sleep                                1
    Element Attribute Value Should Be    id:dropzone                                                         style          background: rgb(0, 200, 0);

Acessar mousehover
    Expande menu iteracoes
    Wait Until Element Is Visible        xpath=//a[@href="/iteracoes/mousehover"]                            10
    Click Element                        xpath=//a[@href="/iteracoes/mousehover"]
    Wait Until Element Is Visible        xpath=/html/body/div[2]/div[2]/div[2]/div/h5

Validar mousehover
    Mouse Over                           xpath=/html/body/div[2]/div[2]/div[3]/div[2]/div/div[2]/span
    Element Should Be Visible            xpath=/html/body/div[2]/div[2]/div[3]/div[2]/div/div[3]/span/div


