*** Settings ***
Library    AppiumLibrary
Library    Process
Library    XML
Library    OperatingSystem
***Keywords***

#----------------------------   ROTA   ----------------------------------------

select a client and signature a invoice
     Wait Until Element Is Visible      ${Desc_Pdv}
     Click Element                      ${Desc_Pdv}
     Click Element                      ${Entregar_Nota}
     Wait Until Element Is Visible      ${Unidade} 
     Element Should Contain Text        ${Unidade}   ${UNB_Rota}
     Element Should Contain Text        ${Cliente}   ${PDV_Rota}
     Input Text                         ${Recebedor}   ${NOME_Recebedor}  
     Input Text                         ${Documento_recebedor}   ${DOCUMENTO}
     Click Element                      ${Rg}  
     Click Element                      ${Vinculo} 
     Element Should Contain Text        ${Nota_fiscal}     ${NF}  
     Element Should Contain Text        ${Nota_fiscal_serie}    ${SERIE}
     Capture Page Screenshot            Lista_NF.png 
     Click Element                      ${Botao_assinar}
     

select a client and click Cancel
     Wait Until Element Is Visible      ${Desc_Pdv}
     Click Element                      ${Desc_Pdv}
     Click Element                      ${Entregar_Nota}
     Wait Until Element Is Visible      ${Unidade} 
     Element Should Contain Text        ${Unidade}   ${UNB_Rota}
     Element Should Contain Text        ${Cliente}   ${PDV_Rota}
     Input Text                         ${Recebedor}   ${NOME_Recebedor}  
     Input Text                         ${Documento_recebedor}   ${DOCUMENTO}
     Click Element                      ${Rg}  
     Click Element                      ${Vinculo} 
     Element Should Contain Text        ${Nota_fiscal}     ${NF}  
     Element Should Contain Text        ${Nota_fiscal_serie}    ${SERIE}
     Capture Page Screenshot            Lista_NF.png 
      Click Element                      ${Botão_cancelar}  
     Element Should Contain Text        ${Aviso_devolucao}    ${mensagem_aviso_devolucao} 
     Capture Page Screenshot            Confirmar_devolucao_rota.png
     Click Element                      ${Sim_aviso_devolucao}
      


the User signature the invoice
     Wait Until Element Is Visible      ${Campo_assinar} 
     Wait Until Element Is Visible      ${Assinatura}
     Swipe     1050    355    1507    329 


the User don't signature the invoice
     Wait Until Element Is Visible      ${Campo_assinar} 
     Wait Until Element Is Visible      ${Assinatura}
     Click Element                      ${Botão_cancelar}  
     Element Should Contain Text        ${Aviso_devolucao}    ${mensagem_aviso_devolucao} 
     Capture Page Screenshot            Confirmar_devolucao_rota.png
     Click Element                      ${Sim_aviso_devolucao}



the User send information
    Wait Until Element Is Visible       ${Aceitar} 
    Click Element                       ${Aceitar}
    Wait Until Element Is Visible       ${Tudo_certo}
    Element Text Should Be              ${Tudo_certo}   ${Sincronizacao_ok}
    Capture Page Screenshot             Tudo_certo.png
    Click Element                       ${Volta_aplicativo} 


the user returns to the home page
    Wait Until Element Is Visible       ${Entregar_nota}
    Capture Page Screenshot             Acoes.png   


the User send information and check the notification
    Wait Until Element Is Visible       ${Aceitar} 
    Click Element                       ${Aceitar}
    Wait Until Element Is Visible       ${Tudo_certo}
    Element Text Should Be              ${Tudo_certo}   ${Sincronizacao_ok}
    Capture Page Screenshot             Tudo_certo.png
    Swipe    296    15    316    1111
    Wait Until Element Is Visible       ${mensagem_push}
    Capture Page Screenshot             Push_Notification.png
    Element Should Contain Text         ${mensagem_push}     Motorista - Seu mapa está fechado

    

the User confirm the conclusion
    Wait Until Element Is Visible       ${Acoes} 
    Click Element                       ${Pre_Seleciona_Cliente}
    Click Element                       ${Concluidos}


#-----------------------------   AS   -----------------------------------------


select a client and signature a AS invoice
     Wait Until Element Is Visible      ${Desc_Pdv_AS}
     Click Element                      ${Desc_Pdv_AS}
     Wait Until Element Is Visible      ${Entregar_Nota}  
     Click Element                      ${Entregar_Nota}
     Wait Until Element Is Visible      ${Selecionar_nota_as_01}  
     Click Element                      ${Selecionar_nota_as_01}
     Capture Page Screenshot            Lista_NF_AS.png 
     Wait Until Element Is Visible      ${Clicar_prosseguir} 
     Click Element                      ${Clicar_prosseguir}
     Wait Until Element Is Visible      ${Clicar_concordo}   
     Capture Page Screenshot            Concordo.png
     Click Element                      ${Clicar_concordo}
     Wait Until Element Is Visible      ${Campo_assinar}
     Wait Until Element Is Visible      ${Assinatura} 
     Swipe     1050    355    1507    329
     Wait Until Element Is Visible       ${Aceitar} 
     Click Element                       ${Aceitar}

take the picture and confirm
     Wait Until Element Is Visible       ${Solicita_foto_cracha} 
     Element Text Should Be              ${Solicita_foto_cracha}     Foto do crachá
     Click Element                       ${Foto_cracha}
     #Wait Until Element Is Visible       ${Permitir}   
     #Click Element                       ${Fechar}
     Wait Until Element Is Visible       ${Tirar_foto_cracha}  
     Click Element                       ${Tirar_foto_cracha}
     Wait Until Element Is Visible       ${Confirma_foto_cracha} 
     Capture Page Screenshot             Foto_cracha.png   
     Click Element                       ${Confirma_foto_cracha}
     Wait Until Element Is Visible       ${Solicita_foto_mercadoria}
     Click Element                       ${Foto_mercaoria}
     Wait Until Element Is Visible       ${Tirar_foto_mercadoria}
     Click Element                       ${Tirar_foto_mercadoria}
     Capture Page Screenshot             Foto_mercadoria.png   
     Wait Until Element Is Visible       ${Confirma_foto_mercadoria}
     Click Element                       ${Confirma_foto_mercadoria}
     Wait Until Element Is Visible       ${Enviar_informações} 
     Capture Page Screenshot             Check_list_AS.png  
     Click Element                       ${Enviar_informações}    
     Wait Until Element Is Visible       ${Tudo_certo}
     Element Text Should Be              ${Tudo_certo}   ${Sincronizacao_ok}
     Capture Page Screenshot             Tudo_certo.png



#--------------------------   COMODATO  --------------------------------------


select a client and signature a COMODATO invoice
     Wait Until Element Is Visible      ${Desc_Pdv_COMODATO}
     Click Element                      ${Desc_Pdv_COMODATO}
     Wait Until Element Is Visible      ${Entregar_Nota}  
     Click Element                      ${Entregar_Nota}
     Wait Until Element Is Visible      ${Unidade} 
     Element Text Should Be             ${Unidade}   ${UNB_Rota}
     Element Text Should Be             ${Cliente_comodato}   ${PDV_COMODATO}
     Click Element                      ${Selecionar_nota_comodato}
     Capture Page Screenshot            Lista_NF_COMODATOu.png 
     Wait Until Element Is Visible      ${Clicar_prosseguir}
     Wait Until Element Is Visible      ${Clicar_prosseguir}
     Click Element                      ${Clicar_prosseguir}
     Wait Until Element Is Visible      ${Clicar_concordo}   
     Capture Page Screenshot            Concordo.png
     Click Element                      ${Clicar_concordo}
     Wait Until Element Is Visible      ${Termo_compromisso}
     Capture Page Screenshot            Termos_compromisso.png
     Swipe    383    898    383    710
     Swipe    383    898    383    710
     Swipe    383    898    383    710
     Capture Page Screenshot            Itens.png
      Swipe    383    898    383    710
      Swipe    383    898    383    710
      Swipe    383    898    383    710
     Capture Page Screenshot            Obrigacoes.png
     Swipe    383    898    383    710
     Swipe    383    898    383    710
     Swipe    383    898    383    710
     Swipe    383    898    383    710
     Capture Page Screenshot            Prazos.png
     Swipe    383    898    383    710
     Swipe    383    898    383    710
     Swipe    383    898    383    710
     Swipe    383    898    383    710
     Swipe    383    898    383    710
     Swipe    383    898    383    710
     Swipe    383    898    383    710
     Swipe    383    898    383    710
     Swipe    383    898    383    710
     Swipe    383    898    383    710
     Swipe    383    898    383    710
     Swipe    383    898    383    710
     Swipe    383    898    383    710
     Swipe    383    898    383    710
     Swipe    383    898    383    710
     Swipe    383    898    383    710
     Swipe    383    898    383    710
     Swipe    383    898    383    710
     Swipe    383    898    383    710
     Swipe    383    898    383    710
     Swipe    383    898    383    710
     Swipe    383    898    383    710
     Capture Page Screenshot            Resumo.png
     Swipe    383    898    383    710
     Click Element                      ${Clicar_concordo}   
     Wait Until Element Is Visible      ${Assinatura_comodato} 
     Swipe     1050    355    1507    329
     Wait Until Element Is Visible       ${Aceitar} 
     Click Element                       ${Aceitar}
     



take the picture and confirm COMODATO
     Wait Until Element Is Visible       ${Solicita_foto_documento} 
     Element Text Should Be              ${Solicita_foto_documento}     Documento
     Click Element                       ${Foto_documento}
     Wait Until Element Is Visible       ${Permitir}   
     Click Element                       ${Fechar}
     Wait Until Element Is Visible       ${Tirar_foto_documento}  
     Click Element                       ${Tirar_foto_documento}  
     Wait Until Element Is Visible       ${Confirma_foto_documento} 
     Capture Page Screenshot             Foto_documento.png  
     Click Element                       ${Confirma_foto_documento}  
     Wait Until Element Is Visible       ${Solicita_foto_estabelecimento}
     Element Text Should Be              ${Solicita_foto_estabelecimento}     Estabelecimento
     Click Element                       ${Foto_documento}
     Wait Until Element Is Visible       ${Tirar_foto_estabelecimento}
     Click Element                       ${Tirar_foto_estabelecimento}
     Wait Until Element Is Visible       ${Confirma_foto_estabelecimento}
     Capture Page Screenshot             Foto_estabelecimento.png
     Click Element                       ${Confirma_foto_estabelecimento} 
     Wait Until Element Is Visible       ${Enviar_informações} 
     Capture Page Screenshot             Check_list_COMODATO.png
     Click Element                       ${Enviar_informações}      
     Wait Until Element Is Visible       ${Tudo_certo}
     Element Text Should Be              ${Tudo_certo}   ${Sincronizacao_ok}
     Capture Page Screenshot             Tudo_certo.png





#--------------------------   RECOLHA COMODATO  --------------------------------------


select a client and signature a RECOLHA COMODATO invoice
     Wait Until Element Is Visible      ${Desc_Pdv_REC_COMODATO}
     Click Element                      ${Desc_Pdv_REC_COMODATO}
     Wait Until Element Is Visible      ${Recolha}
     Click Element                      ${Recolha}
     Wait Until Element Is Visible      ${Unidade} 
     Element Text Should Be             ${Unidade}   ${UNB_Rota}
     Element Text Should Be             ${Cliente_rec_comodato}     ${PDV_REC_COMODATO}
     Capture Page Screenshot            Marteriais_Recolha.png 
     Click Element                      ${Confirmar_recolha}
     Wait Until Element Is Visible      ${Aviso_conf_recolha}
     Element Should Contain Text        ${Aviso_conf_recolha}     Você deseja confirmar a recolha?
     Click Element                      ${Confirmar_aviso_recolha}
     Wait Until Element Is Visible      ${Termos_recolha}   
     Swipe    392    1245    415    679
     Capture Page Screenshot            Recibo_recolha_01.png
     Swipe    392    1245    415    679
     Capture Page Screenshot            Recibo_recolha_02.png
     Swipe    392    1245    415    679
     Capture Page Screenshot            Recibo_recolha_03.png   
     Click Element                      ${Clicar_concordo}  
     Wait Until Element Is Visible      ${Assinatura_comodato} 
     Swipe     1050    355    1507    329
     Wait Until Element Is Visible       ${Aceitar} 
     Click Element                       ${Aceitar}



take the picture and confirm RECOLHA COMODATO
     Wait Until Element Is Visible       ${Solicita_foto_documento} 
     Element Text Should Be              ${Solicita_foto_documento}     Documento
     Click Element                       ${Foto_documento}
     Wait Until Element Is Visible       ${Permitir}   
     Click Element                       ${Fechar}
     Wait Until Element Is Visible       ${Tirar_foto_documento}  
     Click Element                       ${Tirar_foto_documento}  
     Wait Until Element Is Visible       ${Confirma_foto_documento} 
     Capture Page Screenshot             Foto_documento.png  
     Click Element                       ${Confirma_foto_documento}  
     Wait Until Element Is Visible       ${Solicita_foto_estabelecimento}
     Element Text Should Be              ${Solicita_foto_estabelecimento}     Estabelecimento
     Click Element                       ${Foto_documento}
     Wait Until Element Is Visible       ${Tirar_foto_estabelecimento}
     Click Element                       ${Tirar_foto_estabelecimento}
     Wait Until Element Is Visible       ${Confirma_foto_estabelecimento}
     Capture Page Screenshot             Foto_estabelecimento.png
     Click Element                       ${Confirma_foto_estabelecimento} 
     Wait Until Element Is Visible       ${Enviar_informações} 
     Capture Page Screenshot             Check_list_RECOLHA_COMODATO.png
     Click Element                       ${Enviar_informações}      
     Wait Until Element Is Visible       ${Tudo_certo}
     Element Text Should Be              ${Tudo_certo}   ${Sincronizacao_ok}
     Capture Page Screenshot             Tudo_certo.png




#------------------------------ ASSINAR UMA NF -------------------------------

select a client and signature just one invoice
     Wait Until Element Is Visible      ${Desc_Pdv_AS}
     Click Element                      ${Desc_Pdv_AS}
     Wait Until Element Is Visible      ${Entregar_Nota}  
     Click Element                      ${Entregar_Nota}
     Wait Until Element Is Visible      ${Selecionar_nota_as_01}  
     Click Element                      ${Selecionar_nota_as_01}
     Capture Page Screenshot            Lista_NF_AS.png 
     Wait Until Element Is Visible      ${Clicar_prosseguir} 
     Click Element                      ${Clicar_prosseguir}
     Wait Until Element Is Visible      ${Mensagem_devolucao}  
     Capture Page Screenshot            Mensagem_Devolucao.png
     Element Should Contain Text        ${Mensagem_devolucao}    Há notas não selecionadas, deseja devolve-las?
     Click Element                      ${Clicar_devolver}
     Wait Until Element Is Visible      ${Clicar_concordo}   
     Capture Page Screenshot            Concordo.png
     Click Element                      ${Clicar_concordo}
     Wait Until Element Is Visible      ${Campo_assinar}
     Wait Until Element Is Visible      ${Assinatura} 
     Swipe     1050    355    1507    329
     Wait Until Element Is Visible       ${Aceitar} 
     Click Element                       ${Aceitar}



#------------------------------ ASSINAR NAO DEVOLVER -------------------------------



select a client and just one invoice
     Wait Until Element Is Visible      ${Desc_Pdv_AS}
     Click Element                      ${Desc_Pdv_AS}
     Wait Until Element Is Visible      ${Entregar_Nota}  
     Click Element                      ${Entregar_Nota}
     Wait Until Element Is Visible      ${Selecionar_nota_as_01}
     Tap With Positions                 100    ${479, 551}
     #Click Element                      ${Selecionar_nota_as_01}
     Capture Page Screenshot            Lista_NF_AS.png 
     Wait Until Element Is Visible      ${Clicar_prosseguir} 
     Click Element                      ${Clicar_prosseguir}
     Wait Until Element Is Visible      ${Mensagem_devolucao}  
     Capture Page Screenshot            Mensagem_Devolucao.png
     Element Should Contain Text        ${Mensagem_devolucao}    Há notas não selecionadas, deseja devolve-las?
     Click Element                      ${Clicar_nao_devolver}
     Capture Page Screenshot            Seleção_NFs.png    
  


#---------------------------------- SINCRONIZAR ---------------------------------


make cash deposit
    Swipe    392    1245    415    679
    Click Element                        ${App_assinae}
    Wait Until Element Is Visible        ${Deposito_dinheiro}
    Capture Page Screenshot              Tela_deposito.pag_picking
    #Click Element                        ${Deposito_dinheiro}



#---------------------------------- PUSH NOTIFICATION ---------------------------------



select a client and signature a invoice notification
     Wait Until Element Is Visible      ${Desc_Pdv_PUSH}
     Click Element                      ${Desc_Pdv_PUSH}
     Click Element                      ${Entregar_Nota}
     Wait Until Element Is Visible      ${Unidade} 
     Element Text Should Be             ${Unidade}   ${UNB_Rota}
     Element Should Contain Text        ${Cliente}   ${PDV_PUSH}
     Input Text                         ${Recebedor}   ${NOME_Recebedor}  
     Input Text                         ${Documento_recebedor}   ${DOCUMENTO}
     Click Element                      ${Rg}  
     Click Element                      ${Vinculo} 
     Element Should Contain Text        ${Nota_fiscal}     ${NF_PUSH}  
     Element Should Contain Text        ${Nota_fiscal_serie}    ${SERIE}
     Capture Page Screenshot            Lista_NF.png 
     Click Element                      ${Botao_assinar}
     