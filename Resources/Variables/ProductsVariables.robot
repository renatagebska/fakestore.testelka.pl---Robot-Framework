*** Variables ***

${WINDSURFING_CATEGORY_XPATH}           xpath=//*[@id="main"]/ul/li[1]/a
${CLIMBING_CATEGORY_XPATH}              xpath=//*[@id="main"]/ul/li[2]/a
${YOGA_CATEGORY_XPATH}                  xpath=//*[@id="main"]/ul/li[3]/a
${SAILING_CATEGORY_XPATH}               xpath=//*[@id="main"]/ul/li[4]/a

&{SELECT_PRODUCT_LOCATORS}    first_product=//*[@id="main"]/ul/li[1]/a[1]
...                           second_product=//*[@id="main"]/ul/li[2]/a[1]
...                           third_product=//*[@id="main"]/ul/li[3]/a[1]
...                           fourth_product=//*[@id="main"]/ul/li[4]/a[1]
...                           fifth_product=//*[@id="main"]/ul/li[5]/a[1]
...                           sixth_product=//*[@id="main"]/ul/li[6]/a[1]

&{ADD_WINDSERFING_LOCATORS}   Egipt=//*[@id="product-386"]/div[2]/form/button
...                           Fuerteventura=//*[@id="product-393"]/div[2]/form/button
...                           Greece=//*[@id="product-391"]/div[2]/form/button
...                           Karpathos=//*[@id="product-50"]/div[2]/form/button
...                           Lanzarote=//*[@id="product-4116"]/div[2]/form/button
...                           Sal=//*[@id="product-389"]/div[2]/form/button

&{ADD_CLIMBING_LOCATORS}      Gran_Koscielcow=a[data-product_id='4114']
...                           Island_Peak=a[data-product_id='42']
...                           Via_Ferraty=a[data-product_id='40']
    
&{ADD_YOGA_LOCATORS}          Japan=a[data-product_id='61']
...                           Tuscany=a[data-product_id='64']
...                           Spain=a[data-product_id='60']
...                           Portugal=a[data-product_id='53']
...                           Malta=a[data-product_id='62']

&{ADD_SAILING_LOCATORS}       Masuria=a[data-product_id='46']