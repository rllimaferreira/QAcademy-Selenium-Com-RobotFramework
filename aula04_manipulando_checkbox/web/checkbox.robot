# Comandos:
# robot -d ./log checkbox.robot
# robot -d ./log -i ironman checkbox.robot

*** Settings ***
Library                                      SeleniumLibrary

*** Variables ***
${url}                                       https://training-wheels-protocol.herokuapp.com/
${check_thor}                                id:thor
${check_iron}                                css:input[value='iron-man']
${check_panther}                             xpath://*[@id='checkboxes']/input[7]

*** Test Cases ***
Marcando opção com Id
  Open Browser                               ${url}                     chrome
  Go To                                      ${url}/checkboxes
  Select Checkbox                            ${check_thor}
  Checkbox Should Be Selected                ${check_thor}
  Close Browser

Marcando opção com CSS Selector
  Open Browser                               ${url}                     chrome
  Go To                                      ${url}/checkboxes
  Select Checkbox                            ${check_iron}
  Checkbox Should Be Selected                ${check_iron}
  Close Browser

Marcando opção com Xpath
  [tags]                                     ironman
  Open Browser                               ${url}                     chrome
  Go To                                      ${url}/checkboxes
  Select Checkbox                            ${check_panther}
  Checkbox Should Be Selected                ${check_panther}
  Close Browser