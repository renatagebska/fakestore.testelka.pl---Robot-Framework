*** Variables ***

${ORDERBY_FORM_NAME}          name=orderby

&{SORT_LOCATORS}              popularity=//*[@id="main"]/div[1]/form/select/option[2]
...                           rating=//*[@id="main"]/div[1]/form/select/option[3]
...                           date=//*[@id="main"]/div[1]/form/select/option[4]
...                           price_asc=//*[@id="main"]/div[1]/form/select/option[5]
...                           price_desc=//*[@id="main"]/div[1]/form/select/option[6]
...                           menu_order=//*[@id="main"]/div[1]/form/select/option[1]

${SORT_BY_POPULARITY_URL}     https://fakestore.testelka.pl/product-category/windsurfing/?orderby=popularity
${SORT_BY_RATING_URL}         https://fakestore.testelka.pl/product-category/windsurfing/?orderby=rating
${SORT_BY_DATE_URL}           https://fakestore.testelka.pl/product-category/windsurfing/?orderby=date
${SORT_BY_PRICE_ASC_URL}      https://fakestore.testelka.pl/product-category/windsurfing/?orderby=price
${SORT_BY_PRICE_DESC_URL}     https://fakestore.testelka.pl/product-category/windsurfing/?orderby=price-desc