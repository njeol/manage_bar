Feature: Manage_stock
  In order to manage the stock of each alcool
  As a barman
  I want to buy time
  
Scenario: decrease a particular alcool
  Given I have 1 by default in the casebox vodka
  When I press the button minus
  Then the stock of vodka decrease of one.
  
Scenario: Send a mail  
  Given I have a stock of 50 bottles of vodka
  When I have a number of bottles bellow the number 5 
  Then A windows appear on my computer with 50 by default in the casebox
  When I click on the button order
  Then A script send a mail to the provider to order the good number of vodka 
   
Scenario: Increase a particular alcool
  Given I have 3 bottles of vodka
  And I receive my 50 bottles of vodka 
  When I enter 50 bottles in the casebox
  And I press the button add to stock
  Then The stock of vodka is equal to 53 bottles