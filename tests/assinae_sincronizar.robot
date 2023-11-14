***Settings***
Documentation           Sincronizar dados

Resource                ../resources/base.robot

Test Setup              Open Session        
#Test Teardown           Close Session

***Test Cases***
Scenario: Executar sincronização dos dados
    Given that the user opens and close the Caller application
    Given make cash deposit
