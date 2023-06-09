*** Settings ***
Documentation    Teste do fluxo de compra (e2e)

Resource        ../../resources/base.robot

Test Setup      Abrir Navegador
Test Teardown   Fechar Navegador

*** Test Cases ***
Comprar primeira passagem para o destino
    Selecionar origem e destino do voo
    Selecionar o primeiro voo da lista
    Preencher nome "Juca"
    Selecionar bandeira "American Express"
    Clicar em Lembrar de Mim
    Clicar no botao Purchase Flight
    Validar a mensagem de agradecimento "Thank you for your purchase today!"
    Validar o preco da passagem "555 USD"


