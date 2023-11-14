***Settings***
Documentation           Importar Arquivo de dados iniciais da Recolha

Resource                ../resources/base.robot

Test Setup              Open Session          
#Test Teardown           Close Session


***Test Cases***
Scenario: Importar Dados Iniciais e Assinar Canhoto RECOLHA COMODATO
    Given that the user opens the Caller application
    When the User import a file
    When check the PDV RECOLHA COMODATO information
    When the User import a file recolha
    And check the PDV RECOLHA COMODATO information
    And select a client and signature a RECOLHA COMODATO invoice
    Then take the picture and confirm RECOLHA COMODATO