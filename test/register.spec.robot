*** Settings ***
Library    SeleniumLibrary
Suite teardown   close All Browsers
*** Test Cases ***
Open Register Page Successful
  Open Browser  http://bit.ly/2BajZDe    chrome

Register Page Chexk All Required Fields
  Open Browser  http://bit.ly/2BajZDe    chrome
  Click Element  id=btn_submit
  Wait Until Page Contains  The Email field is required.
  Wait Until Page Contains  The Password field is required.
  Wait Until Page Contains  The Re-type Password field is required.
  Wait Until Page Contains  The Name field is required.