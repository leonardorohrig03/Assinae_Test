***Settings***
Documentation           Importar Arquivo de dados iniciais da rota

Resource                ../resources/base.robot

Test Setup              Open Session          
#Test Teardown           Close Session


***Test Cases***
Scenario: Importar Dados Iniciais e Assinar Canhoto
    Given that the user opens the Caller application
    When the User import a file
    And check the PDV information
    And select a client and signature a invoice
    And the User signature the invoice
    Then the User send information

