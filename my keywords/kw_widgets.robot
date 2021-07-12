*** Keywords ***
Expande menu Widgets
    Wait Until Element Is Visible    xpath=/html/body/div[2]/div[1]/ul/li[4]/a                         10
    Click Element                    xpath=/html/body/div[2]/div[1]/ul/li[4]/a

Acessar accordion
    Expande menu Widgets
    Wait Until Element Is Visible    xpath=//a[@href="/widgets/accordion"]                             10
    Click Element                    xpath=//a[@href="/widgets/accordion"]
    Wait Until Element Is Visible    xpath=//html/body/div[2]/div[2]/div[2]/div/h5

Validar accordion
    Click Element                    xpath=/html/body/div[2]/div[2]/div[3]/div/ul/li[1]/div[1]
    Sleep                            0.5
    Element should be Visible        xpath=/html/body/div[2]/div[2]/div[3]/div/ul/li[1]/div[2]/span
    Element should Not be Visible    xpath=/html/body/div[2]/div[2]/div[3]/div/ul/li[2]/div[2]/span
    Element should Not be Visible    xpath=/html/body/div[2]/div[2]/div[3]/div/ul/li[3]/div[2]/span
    Click Element                    xpath=/html/body/div[2]/div[2]/div[3]/div/ul/li[2]/div[1]
    Sleep                            0.5
    Element should be Visible        xpath=/html/body/div[2]/div[2]/div[3]/div/ul/li[2]/div[2]/span
    Element should Not be Visible    xpath=/html/body/div[2]/div[2]/div[3]/div/ul/li[1]/div[2]/span
    Element should Not be Visible    xpath=/html/body/div[2]/div[2]/div[3]/div/ul/li[3]/div[2]/span
    Click Element                    xpath=/html/body/div[2]/div[2]/div[3]/div/ul/li[3]/div[1]
    Sleep                            0.5
    Element should be Visible        xpath=/html/body/div[2]/div[2]/div[3]/div/ul/li[3]/div[2]/span
    Element should Not be Visible    xpath=/html/body/div[2]/div[2]/div[3]/div/ul/li[1]/div[2]/span
    Element should Not be Visible    xpath=/html/body/div[2]/div[2]/div[3]/div/ul/li[2]/div[2]/span
