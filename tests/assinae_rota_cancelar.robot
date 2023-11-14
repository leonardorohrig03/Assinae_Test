***Settings***
Documentation           Importar Arquivo de dados iniciais da rota e não receber mercadoria

Resource                ../resources/base.robot

Test Setup              Open Session          
#Test Teardown           Close Session


***Test Cases***
Scenario: Importar Dados Iniciais e cancelar antes de Assinar Canhoto
    Given that the user opens the Caller application
    When the User import a file
    And check the PDV information
    And select a client and click Cancel
    Then the user returns to the home page

    
