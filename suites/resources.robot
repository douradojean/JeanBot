*** Settings ***
Resource    ..\\config.robot
Resource    ${keywords}\\setup\\setup.robot
Resource    ${keywords}\\teardown\\teardown.robot
Resource    ${keywords}\\kw_formulario.robot
Resource    ${keywords}\\kw_busca_elementos.robot
Resource    ${keywords}\\kw_foco.robot
Resource    ${keywords}\\kw_widgets.robot
Resource    ${keywords}\\kw_iteracoes.robot
Resource    ${keywords}\\kw_outros.robot



Library     BuiltIn
Library     OperatingSystem
Library     SeleniumLibrary
Library     String
Library     DateTime
Library     Collections
Library     FakerLibrary                             locale=pt_BR
Library     JSONLibrary