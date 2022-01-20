*** Settings ***
Library         SeleniumLibrary

*** Variables ***
${BROWSER}      chrome
${URL}      http://automationpractice.com/index.php 


*** Keywords ***
Abrir página do site
    Open Browser        url=${URL}       browser=${BROWSER}
Maximizar a tela
    Maximize Browser Window
Clicar em Sign in
    Click Element       xpath=//*[@id="header"]/div[2]/div/div/nav/div[1]/a
    Sleep       5
Colocoar email e senha
    Input Text          xpath=//*[@id="email"]          jatatajajajaja@gmail.com
    Input Text          xpath=//*[@id="passwd"]         123456
Clicar no botão verde Sign in 
    Click Button        css=#SubmitLogin
    Sleep       3
    Page Should Contain         Kleber Krebinho
Clicar em DRESSES
    Click Element       xpath=//*[@id="block_top_menu"]/ul/li[2]/a
    Sleep           2
Clicar em Summer Dresses
    Click Element       xpath=//*[@id="categories_block_left"]/div/ul/li[3]/a
    Sleep       2
Escolher o tamanho S
    Click Element       xpath=//*[@id="layered_id_attribute_group_1"]
Em Styles escolher Girly
    Click Element       xpath=//*[@id="layered_id_feature_13"]
Em properties escolher Maxi Dress
    Click Element       xpath=//*[@id="layered_id_feature_21"]
    Sleep           0.5
    Scroll Element Into View          xpath=//*[@id="center_column"]/ul/li[1]/div/div[2]/span/span
Na primeira foto, clicar em Add to car
    Click Element       xpath=//*[@id="center_column"]/ul/li[1]/div/div[2]/div[2]/a[1]/span
    Sleep           1.5
Clicar em Proceed to checkout
    #tive que escolher o css, pois o xpath dava erro
    Click Element       css=#layer_cart > div.clearfix > div.layer_cart_cart.col-xs-12.col-md-6 > div.button-container > a > span
Escrever 2 em Qty e Proceed to checkout nas outras telas
    Input Text         xpath=//*[@id="product_5_19_0_633236"]/td[5]/input[2]        2
    Sleep       1
    Scroll Element Into View        css=#center_column > p.cart_navigation.clearfix > a.button.btn.btn-default.standard-checkout.button-medium > span
    Sleep       1
    Click Element       css=#center_column > p.cart_navigation.clearfix > a.button.btn.btn-default.standard-checkout.button-medium > span
    Sleep       1.8
Em Address, clicar em Proceed to checkout
    Click Element       css=#center_column > form > p > button > span
    Sleep       1.7
    Scroll Element Into View        css=#form > p > button > span
Em Shipping, concordar com os termos e clicar em Proceed to checkout
    Click Element       id=cgv
    Click Element           css=#form > p > button > span    
Em Payment, clicar em Pay by bank wire e no botão I confirm my order
    Click Element       css=#HOOK_PAYMENT > div:nth-child(1) > div > p > a
    Sleep       0.6
    Click Element       css=#cart_navigation > button > span
Clicar em Back to orders para confirmar se o nosso pedido está visível
    Click Element       xpath=//*[@id="center_column"]/p/a
    Sleep       0.5
    Page Should Contain         On backorder