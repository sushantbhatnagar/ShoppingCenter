Feature: Shopping @ Centric

  @register
  Scenario:  Dashboard Page
    Given I am on the RegisterConfirmation Page

  @login
  Scenario: Login
    Given I am on the Login Page
    Then I proceed to the Shopping Page
