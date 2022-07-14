*** Settings ***
Resource                                     base.robot

Test Setup                                   Nova sessão
Test Teardown                                Encerra sessão

*** Test Cases ***
Login com sucesso
  Go To                                      ${url}/login
  Input Text                                 css:input[name=username]              stark
  Input Text                                 css:input[name=password]              jarvis!
  Click Element                              class:btn-login

  Page Should Contain                        Olá, Tony Stark. Você acessou a área logada!