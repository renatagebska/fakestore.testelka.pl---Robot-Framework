*** Variables ***

${WINDSURFING_CATEGORY_XPATH}           xpath://*[@id="main"]/ul/li[1]/a
${CLIMBING_CATEGORY_XPATH}              xpath://*[@id="main"]/ul/li[2]/a
${YOGA_CATEGORY_XPATH}                  xpath://*[@id="main"]/ul/li[3]/a
${SAILING_CATEGORY_XPATH}               xpath://*[@id="main"]/ul/li[4]/a

${WINDSERFING_URL}                      https://fakestore.testelka.pl/product-category/windsurfing/
${CLIMBING_URL}                         https://fakestore.testelka.pl/product-category/wspinaczka/
${YOGA_URL}                             https://fakestore.testelka.pl/product-category/yoga-i-pilates/
${SAILING_URL}                          https://fakestore.testelka.pl/product-category/zeglarstwo/

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

&{ADD_CLIMBING_LOCATORS}      Gran_Koscielcow=//*[@id="product-4114"]/div[2]/form/button
...                           Island_Peak=//*[@id="product-42"]/div[2]/form/button
...                           Via_Ferraty=//*[@id="product-40"]/div[2]/form/button
    
&{ADD_YOGA_LOCATORS}          Japan=//*[@id="product-61"]/div[2]/form/button
...                           Tuscany=//*[@id="product-64"]/div[2]/form/button
...                           Spain=//*[@id="product-60"]/div[2]/form/button
...                           Portugal=//*[@id="product-53"]/div[2]/form/button
...                           Malta=//*[@id="product-62"]/div[2]/form/button

&{ADD_SAILING_LOCATORS}       Masuria=//*[@id="product-46"]/div[2]/form/button