***Keywords***

the User access the login page
    Wait Until Element Is Visible       ${Form.Login.Entrar}

#palavra chave que recebe dois argumentos
the User submit his ID  
    [Arguments]                         ${USER}
    Click Element                       ${Form.Login.Matricula}
    Input Text                          ${Form.Login.Matricula}             ${USER}

Check the User Terms
    Click Element                       ${Form.Login.CheckTermos}

Click the Login Button
    Click Element                       ${Form.Login.Entrar}
    Wait Until Element Is Visible   ${InitialPage.Label_Daily_Routes}


user logins into the app
    [Arguments]                         ${USER}
    the User access the login page
    the User submit his ID     ${USER}
    Check the User Terms
    Click the Login Button
