*** Variables ***

${ORDERBY_FORM_NAME}          name:orderby

&{SORT_LOCATORS}              popularity=//*[@id="main"]/div[1]/form/select/option[2]
...                           rating=//*[@id="main"]/div[1]/form/select/option[3]
...                           date=//*[@id="main"]/div[1]/form/select/option[4]
...                           price_asc=//*[@id="main"]/div[1]/form/select/option[5]
...                           price_desc=//*[@id="main"]/div[1]/form/select/option[6]
...                           menu_order=//*[@id="main"]/div[1]/form/select/option[1]

&{SORT_URLS}                  popularity=/?orderby=popularity
...                           rating=/?orderby=rating
...                           date=?orderby=date
...                           price_asc=/?orderby=price
...                           price_desc=/?orderby=price-desc
...                           menu_order=/

${price_element}              css:span.woocommerce-Price-amount.amount