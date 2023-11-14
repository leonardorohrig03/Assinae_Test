*** Settings ***
Library    AppiumLibrary
***Keywords***

that the user opens the Caller application
     Wait Until Element Is Visible      ${Permitir}
     Wait Until Element Is Visible      ${Fechar}   
     Click Element                      ${Fechar} 
       

that the user opens and close the Caller application
     Wait Until Element Is Visible      ${Permitir}
     Wait Until Element Is Visible      ${Fechar}   
     Click Element                      ${Fechar} 
     Tap With Positions                 100    ${566, 1436}


the User import a file
     Wait Until Element Is Visible      ${Importar}
     Wait Until Element Is Visible      ${Importar}
     Wait Until Element Is Visible      ${Importar}  
     Click Element                      ${Importar}
     Wait Until Element Is Visible      ${Importar_Dados}  
     Click Element                      ${Importar_Dados}
     Wait Until Element Is Visible      ${Seleciona_Arquivo}  
     Click Element                      ${Seleciona_Arquivo}



the User import a file recolha
     Wait Until Element Is Visible      ${Importar}
     Wait Until Element Is Visible      ${Importar}
     Wait Until Element Is Visible      ${Importar}  
     Click Element                      ${Importar}
     Wait Until Element Is Visible      ${Importar_temporario}  
     Click Element                      ${Importar_temporario} 
     Wait Until Element Is Visible      ${Seleciona_Arquivo_recolha}
     Click Element                      ${Seleciona_Arquivo_recolha}



the User import a file as
     Click Element                      ${Importar}
     Wait Until Element Is Visible      ${Importar_Dados}  
     Click Element                      ${Importar_Dados}
     Wait Until Element Is Visible      ${Seleciona_Arquivo}  
     Click Element                      ${Seleciona_Arquivo}


check the PDV information
    #[Arguments]                         ${PDV1}
     Wait Until Element Is Visible      ${Pre_Seleciona_Cliente}
     Click Element                      ${Pre_Seleciona_Cliente}
     Click Element                      ${Pre_Seleciona_Cliente}
     Wait Until Element Is Visible      ${Desc_Pdv}  
     Element Text Should Be             ${Desc_Pdv}     ${PDV1}
     Capture Page Screenshot            Cliente.png


check the PDV PUSH information
    #[Arguments]                         ${PDV1}
     Wait Until Element Is Visible      ${Pre_Seleciona_Cliente}
     Click Element                      ${Pre_Seleciona_Cliente}
     Click Element                      ${Pre_Seleciona_Cliente}
     Wait Until Element Is Visible      ${Desc_Pdv_PUSH}  
     Element Should Contain Text        ${Desc_Pdv_PUSH}      ${PDV4}
     Capture Page Screenshot            Cliente.png


check the PDV AS information
    #[Arguments]                         ${PDV1}
     Wait Until Element Is Visible      ${Pre_Seleciona_Cliente}
     Click Element                      ${Pre_Seleciona_Cliente}
     Click Element                      ${Pre_Seleciona_Cliente}
     Wait Until Element Is Visible      ${Desc_Pdv_AS}  
     Element Should Contain Text        ${Desc_Pdv_AS}     ${PDV2}
     Capture Page Screenshot            ClienteAS.png


check the PDV COMODATO information
    #[Arguments]                         ${PDV1}
     Wait Until Element Is Visible      ${Pre_Seleciona_Cliente}
     Click Element                      ${Pre_Seleciona_Cliente}
     Click Element                      ${Pre_Seleciona_Cliente}
     Wait Until Element Is Visible      ${Desc_Pdv_COMODATO}  
     Element Text Should Be             ${Desc_Pdv_COMODATO}      ${PDV2}
     Capture Page Screenshot            ClienteCOMODATO.png



#---------------------------------- RECOLHA COMODATO ---------------------------------



check the PDV RECOLHA COMODATO information
     Wait Until Element Is Visible      ${Pre_Seleciona_Cliente}
     Click Element                      ${Pre_Seleciona_Cliente}
     Click Element                      ${Pre_Seleciona_Cliente}
     Wait Until Element Is Visible      ${Desc_Pdv_REC_COMODATO}  
     Element Text Should Be             ${Desc_Pdv_REC_COMODATO}      97749 - SANTO ANTONIO
     Capture Page Screenshot            Cliente_REC_COMODATO.png
