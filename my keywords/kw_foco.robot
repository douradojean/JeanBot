*** Keywords ***
Expande menu mudanca de foco
    Wait Until Element Is Visible        xpath=/html/body/div[2]/div[1]/ul/li[3]/a                           10
    Click Element                        xpath=/html/body/div[2]/div[1]/ul/li[3]/a

Acessar alertas
    Expande menu mudanca de foco
    Wait Until Element Is Visible        xpath=//a[@href="/mudancadefoco/alert"]                             10
    Click Element                        xpath=//a[@href="/mudancadefoco/alert"]
    Wait Until Element Is Visible        xpath=/html/body/div[2]/div[2]/div[2]/div/div[1]/h3

Validar JS alert
    Click Element                        xpath=/html/body/div[2]/div[2]/div[2]/div/div[1]/ul/li[1]/button
    Handle Alert                         action=ACCEPT
    Element Text Should Be               id:result                                                           Você clicou no alerta com sucesso!!

Validar JS confirm
    Click Element                        xpath=/html/body/div[2]/div[2]/div[2]/div/div[1]/ul/li[2]/button
    Handle Alert                         action=ACCEPT
    Element Text Should Be               id:result                                                           Você clicou: Ok

Validar JS prompt
    Click Element                        xpath=/html/body/div[2]/div[2]/div[2]/div/div[1]/ul/li[3]/button
    Input Text Into Alert                teste prompt                                                        action=ACCEPT
    Element Text Should Be               id:result                                                           Você digitou: teste prompt

Acessar janelas
    Expande menu mudanca de foco
    Wait Until Element Is Visible        xpath=//a[@href="/mudancadefoco/janela"]                            10
    Click Element                        xpath=//a[@href="/mudancadefoco/janela"]
    Wait Until Element Is Visible        xpath=/html/body/div[2]/div[2]/div[2]/div/h5

Validar abertura de nova janela
    Click Element                        xpath=//a[@href="/mudancadefoco/newwindow"]
    Wait Until Element Is Visible        xpath=/html/body/div[2]/div[2]/div[3]/div/img                       10
    Element Text Should Be               xpath=/html/body/div[2]/div[2]/div[2]/div/h5                        Você Abriu uma nova janela!!

Acessar Modal
    Expande menu mudanca de foco
    Wait Until Element Is Visible        xpath=//a[@href="/mudancadefoco/modal"]                             10
    Click Element                        xpath=//a[@href="/mudancadefoco/modal"]
    Wait Until Element Is Visible        xpath=/html/body/div[2]/div[2]/div[2]/div/h5                        10

Validar exibicao do modal
    Element Should Not Be Visible        xpath=//*[@id="modal1"]
    Click Element                        xpath=/html/body/div[2]/div[2]/div[3]/div/a
    Element Attribute Value Should Be    xpath=//*[@id="modal1"]                                             class                                  modal open
    Element Should Be Visible            xpath=//*[@id="modal1"]
    Click Element                        xpath=//*[@id="modal1"]/div[2]/a
    Element Attribute Value Should Be    xpath=//*[@id="modal1"]                                             class                                  modal
