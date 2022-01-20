*** Settings ***
Documentation       Comprando um produto
Resource        resource.robot

*** Test Cases  ***
Caso de Teste 01: Comprar um produto no site
    Abrir página do site
    Maximizar a tela
    Clicar em Sign in
    Colocoar email e senha
    Clicar no botão verde Sign in
    Clicar em DRESSES
    Clicar em Summer Dresses
    Escolher o tamanho S
    Em Styles escolher Girly
    Em properties escolher Maxi Dress
    Na primeira foto, clicar em Add to car
    Clicar em Proceed to checkout
    Escrever 2 em Qty e Proceed to checkout nas outras telas
    Em Address, clicar em Proceed to checkout
    Em Shipping, concordar com os termos e clicar em Proceed to checkout
    Em Payment, clicar em Pay by bank wire e no botão I confirm my order
    Clicar em Back to orders para confirmar se o nosso pedido está visível

