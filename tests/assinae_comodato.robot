***Settings***
Documentation           Importar Arquivo de dados iniciais da rota

Resource                ../resources/base.robot

Test Setup              Open Session          
#Test Teardown           Close Session


***Test Cases***
Scenario: Importar Dados Iniciais e Assinar Canhoto COMODATO
    Given that the user opens the Caller application
    When the User import a file as
    And check the PDV COMODATO information
    And select a client and signature a COMODATO invoice
    Then take the picture and confirm COMODATO