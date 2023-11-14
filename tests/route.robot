***Settings***
Documentation           Routes PROM/REP

Resource                ../resources/base.robot

Test Setup              Open Session          
Test Teardown           Close Session

***Test Cases***
Scenario: A PROM seeing his daily routes
    Given user logins into the app  ${PROM_ID}
    When the PROM sees its routes
    And Checkin in the store
    Then Execute EPI Survey
