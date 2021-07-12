*** Keywords ***
Acessar busca de elementos
    Wait Until Element Is Visible        xpath=/html/body/div[2]/div[1]/ul/li[2]/a                       10
    Click Element                        xpath=/html/body/div[2]/div[1]/ul/li[2]/a

Acessar links
    Acessar busca de elementos
    Wait Until Element Is Visible        xpath=//a[@href="/buscaelementos/links"]                        10
    Click Link                           xpath=//a[@href="/buscaelementos/links"]

Validar todos os links
    FOR                                  ${i}                                                            IN RANGE                   0                       4
    Wait Until Element Is Visible        xpath=/html/body/div[2]/div[2]/div[2]/h5                        10
    IF                                   ${i} == 0
    Click Link                           xpath=//a[@href="/buscaelementos/success"]
    ELSE IF                              ${i} == 1
    Click Link                           xpath=//a[@href="/buscaelementos/badrequest"]
    ELSE IF                              ${i} == 2
    Click Link                           xpath=//a[@href="/buscaelementos/notfound"]
    ELSE
    Click Link                           xpath=//a[@href="/buscaelementos/internalservererror"]
    END

    Wait Until Element Is Visible        xpath=//a[@href="/buscaelementos/links"]                        10

    IF                                   ${i} == 0
    Element Text Should Be               xpath=/html/body/div[2]/div[2]/div[2]/div/h5                    Success!!
    ELSE IF                              ${i} == 1
    Element Text Should Be               xpath=/html/body/div[2]/div[2]/div[2]/h5                        Bad Request!!
    ELSE IF                              ${i} == 2
    Element Text Should Be               xpath=//html/body/div[2]/div[2]/div[2]/div[2]/h5                Page Not Found!!
    ELSE
    Element Text Should Be               xpath=/html/body/div[2]/div[2]/div[2]/h5                        Internal Server Error!!
    END

    Click Link                           xpath=//a[@href="/buscaelementos/links"]
    END

Acessar inputs e Textfield
    Acessar busca de elementos
    Wait Until Element Is Visible        xpath=//a[@href="/buscaelementos/inputsetextfield"]             10
    Click Link                           xpath=//a[@href="/buscaelementos/inputsetextfield"]

Preehcer inputs e Textfield
    Input Text                           id:first_name                                                   Teste
    Input Text                           id:last_name                                                    teste2
    Input Text                           id:password                                                     1234
    Input Text                           id:email                                                        teste@teste.com
    Input Text                           id:textarea1                                                    Teste teste

Validar classes inputs e Textfield
    Element Attribute Value Should Be    id:first_name                                                   class                      validate valid
    Element Attribute Value Should Be    id:last_name                                                    class                      validate valid
    Element Attribute Value Should Be    id:password                                                     class                      validate valid
    Element Attribute Value Should Be    id:email                                                        class                      validate valid
    Element Attribute Value Should Be    id:textarea1                                                    class                      materialize-textarea

Acessar botoes
    Acessar busca de elementos
    Wait Until Element Is Visible        xpath=//a[@href="/buscaelementos/botoes"]                       10
    Click Link                           xpath=//a[@href="/buscaelementos/botoes"]

Clicar botoes
    Wait Until Element Is Visible        xpath=/html/body/div[2]/div[2]/div[2]/div/div[2]/h5             10
    Click Element                        id:teste
    Click Element                        xpath=/html/body/div[2]/div[2]/div[4]/div[1]/div/a
    Click Element                        xpath=/html/body/div[2]/div[2]/div[5]/div[1]/div/a
    Click Element                        xpath=/html/body/div[2]/div[2]/div[6]/div[1]/div/button

Validar mensagem botoes
    Element Text Should Be               xpath=//*[@id="div1"]/h5                                        Você Clicou no Botão!
    Element Text Should Be               xpath=//*[@id="div2"]/h5                                        Você Clicou no Botão!
    Element Text Should Be               xpath=//*[@id="div3"]/h5                                        Você Clicou no Botão!
    Element Text Should Be               xpath=//*[@id="div4"]/h5                                        Você Clicou no Botão!

Acessar radio e checkbox
    Acessar busca de elementos
    Wait Until Element Is Visible        xpath=//a[@href="/buscaelementos/radioecheckbox"]               10
    Click Link                           xpath=//a[@href="/buscaelementos/radioecheckbox"]

Selecionar radio e checkbox
    Wait Until Element Is Visible        xpath=/html/body/div[2]/div[2]/div[2]/div[1]/h5                 10
    Click Element                        xpath=/html/body/div[2]/div[2]/div[3]/div[1]/form/p[1]/label
    Click Element                        xpath=/html/body/div[2]/div[2]/div[3]/div[1]/form/p[2]/label
    Click Element                        xpath=/html/body/div[2]/div[2]/div[3]/div[1]/form/p[3]/label
    Click Element                        xpath=/html/body/div[2]/div[2]/div[3]/div[1]/form/p[4]/label
    Click Element                        xpath=/html/body/div[2]/div[2]/div[3]/div[2]/p[1]/label
    Click Element                        xpath=/html/body/div[2]/div[2]/div[3]/div[2]/p[2]/label
    Click Element                        xpath=/html/body/div[2]/div[2]/div[3]/div[2]/p[3]/label
    Click Element                        xpath=/html/body/div[2]/div[2]/div[3]/div[2]/p[4]/label

Validar todos os radios e checkbox
    Checkbox Should Be Selected          id:purple
    Checkbox Should Be Selected          id:grey
    Checkbox Should Be Selected          id:black
    Checkbox Should Be Selected          id:white