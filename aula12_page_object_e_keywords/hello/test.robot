
*** Settings ***
Library    app.py


*** Test Cases ***
Deve retornar mensagem de boas-vindas
  ${result} =        Welcome      Rodrigo
  Should Be Equal    ${result}    Olá, Rodrigo, bem-vindo ao Curso Básico de Robot Framework!
