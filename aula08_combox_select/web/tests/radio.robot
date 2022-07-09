# Comando: robot -d ./log tests\radio.robot

*** Settings ***
Resource                                     base.robot

Test Setup                                   Nova sessão
Test Teardown                                Encerra sessão

*** Test Cases ***
Selecionando por Id
  Go To                                      ${url}/radios
#   Seleciona
  Select Radio Button                        movies        cap
#   Verifica se foi selecionado
  Radio Button Should Be Set To              movies        cap 

Selecionando por Value
  Go To                                      ${url}/radios
  Select Radio Button                        movies        guardians
  Radio Button Should Be Set To              movies        guardians