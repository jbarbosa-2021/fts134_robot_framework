*** Settings ***
Documentation       mapeamento das acoes da pagina de pagamento


*** Keywords ***
Preencher nome "${nome}"
    input text      id = inputName              ${nome}

Preencher endereco "${endereco}"
    input text      id = inputName              ${endereco}

Preencher cidade "${cidade}"
    input text      id = city                   ${cidade}

Preencher uf "${uf}"
    input text      id = state                  ${uf}

Preencher CEP "${cep}"
    input text      id = zipCod                 ${cep}

Preencher bandeira "${bandeira}"
    select from list by label   id = cardType   ${bandeira}

Preencher mes de validade do cartao "${mes}"
    input text      id = creditCardMonth        ${mes}

Preencher mes de validade do cartao "${ano}"
    input text      id = creditCardMonth        ${ano}

Preencher nome no cartao "${titular}"
    input text      id = nameOnCard             ${titular}

Clicar em Lembrar de Mim
    checkbox should be selected     id = rememberMe