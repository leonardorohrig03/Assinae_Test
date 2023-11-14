***Settings***
Documentation           Assinatura de apenas uma Nota Fiscal - Não Devolver

Resource                ../resources/base.robot

Test Setup              Open Session          
#Test Teardown           Close Session
# Arquivo   0_AUT_AS_3.csv


***Test Cases***
Scenario: Importar Dados Iniciais e apenas uma Nota Fiscal e não Devolver
    Given that the user opens the Caller application
    When the User import a file as
    And check the PDV AS information
    And select a client and just one invoice