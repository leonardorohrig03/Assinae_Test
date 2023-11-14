***Settings***
Documentation           Importar Arquivo de dados iniciais da rota

Resource                ../resources/base.robot

Test Setup              Open Session          
#Test Teardown           Close Session


***Test Cases***
Scenario: Importar Dados Iniciais e Assinar Canhoto
    Given that the user opens the Caller application
    When the User import a file
    And check the PDV PUSH information
    And select a client and signature a invoice notification
    And the User signature the invoice
    Then the User send information and check the notification

