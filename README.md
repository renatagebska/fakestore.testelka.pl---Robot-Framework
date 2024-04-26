# fakestore.testelka.pl-Robot-Framework
## Automation of Test Cases using Robot Framework and Selenium Library

## Test Cases:


### Test Case: User Registration Functionality
### ID: 001
### Title: Verify if a new user can successfully complete the registration process using new, correct registration data.


#### Steps:
* Open the Chrome browser.
* Maximize the window.
* Go to the website: https://fakestore.testelka.pl/
* Locate and click on the "My Account" link.
* Locate the "Email Address" field and enter a valid email address.
* Locate the "Password" field and enter a password.
* Locate and click on the "Register" button.
* Close the browser.

#### Expected Results:
* After step 3: The page https://fakestore.testelka.pl/ is loaded correctly.
* After step 4: A page with the options "Log in" and "Register" is displayed.
* After step 5: The correct email address is entered into the appropriate field.
* After step 6: The password is entered into the appropriate field.
* After step 7: The user is successfully registered and redirected to the "My Account" page.
* After step 8: The browser is closed.
---


### Test Case: Login Functionality
### ID: 002
### Title: Verify if a user can successfully log in using correct login credentials.


#### Steps:
* Open the Chrome browser.
* Maximize the window.
* Go to the website: https://fakestore.testelka.pl/
* Locate and click on the "My Account" link.
* Locate the "Email Address" field and enter a valid email address.
* Locate the "Password" field and enter a valid password.
* Locate and click on the "Log in" button.
* Close the browser.

#### Expected Results:
* After step 3: The page https://fakestore.testelka.pl/ is loaded correctly.
* After step 4: A page with the options "Log in" and "Register" is displayed.
* After step 5: The correct email address is entered into the appropriate field.
* After step 6: The correct password is entered into the appropriate field.
* After step 7: The user is successfully logged in and redirected to the "My Account" page.
* After step 8: The browser is closed.
---


### Test Case: Adding to Cart Functionality
### ID: 003
### Title: Verify if a user can successfully add products to the cart.


#### Steps:
* Open the Chrome browser.
* Maximize the window.
* Go to the website: https://fakestore.testelka.pl/
* Locate and click on the "Shop" link.
* Locate and click the "Climbing" link.
* Locate the sorting window and sort the products by popularity.
* Click on the first displayed product.
* Locate and click on the quantity input field.
* Clear the quantity input field.
* Enter quantity 1.
* Click on the "Add to Cart" button.
* Locate and click on the "Shop" link.
* Locate and click the "Yoga and Pilates" link.
* Locate the sorting window and sort the products by price: from lowest.
* Click on the second displayed product.
* Locate and click on the quantity input field.
* Clear the quantity input field.
* Enter quantity 2.
* Click on the "Add to Cart" button.
* Locate and click on the "Cart" link.
* Close the browser.

#### Expected Results:
* After step 3: The page https://fakestore.testelka.pl/ is loaded correctly.
* After step 4: A page with available products is displayed.
* After step 5: The climbing offers are displayed.
* After step 6: The products are sorted by popularity.
* After steps 7-11: The first displayed product is added to the cart.
* After steps 12-19: The second displayed product from the "Yoga and Pilates" category sorted by price: from lowest in quantity 2 is added to the cart.
* After step 19: The cart contents are displayed.
* After step 20: The browser is closed.
---


### Test Case: Order Checkout Process
### ID: 004
### Title: Verify if a user can successfully complete the order checkout process.


#### Steps:
* Open the Chrome browser.
* Maximize the window.
* Go to the website: https://fakestore.testelka.pl/
* Locate and click on the "Shop" link.
* Locate and click the "Windsurfing" link.
* Locate the sorting window and sort the products by date.
* Click on the third displayed product.
* Locate and click on the quantity input field.
* Clear the quantity input field.
* Enter quantity 2.
* Click on the "Add to Cart" button.
* Locate and click on the "Shop" link.
* Locate and click the "Sailing" link.
* Click on the first displayed product.
* Locate and click on the quantity input field.
* Clear the quantity input field.
* Enter quantity 3.
* Click on the "Add to Cart" button.
* Locate and click on the "Cart" link.
* Locate and clear the "Coupon Code" field. Enter the code 10percent.
* Locate and click on the "Apply Coupon" button.
* Locate and click on the "Proceed to Checkout" button.
* Fill in the payment details: first name, last name, street, postal code, city, phone, email address, any additional information, card number, expiration date, CVC code.
* Accept the terms and conditions and locate and click on the "Buy and Pay" button.
* Close the browser.

#### Expected Results:
* After steps 19-20: After entering the coupon code and clicking the "Apply Coupon" button, the expected result is the application of the coupon and any changes to the cart or order price.
* After steps 21-22: Proceed to the payment section, where the user should enter correct payment details and credit card information.
* After step 23: The user should receive an order confirmation and be redirected to the order confirmation page.
* After step 24: The browser is closed.
---



### Test Case: Product Sorting Functionality
### ID: 005
### Title: Verify if a user can successfully sort Climbing products.

#### Steps:
* Open the Chrome browser.
* Maximize the window.
* Go to the website: https://fakestore.testelka.pl/
* Locate and click on the "Shop" link.
* Locate and click the "Climbing" link.
* Check menu-order sorting:
  - Click sorting element.
  - Ensure "Menu Order" is selected.
  - Compare results order with expected.
*  Sort by popularity:
  - Click sorting element.
  - Choose "Sort by popularity".
  - Verify results are sorted by popularity.
* Sort by rating:
  - Click sorting element.
  - Select "Sort by average rating".
  - Confirm results are sorted by product rating.
* Sort by newness:
  - Click sorting element.
  - Opt for "Sort by newness".
  - Validate results are sorted by product addition date, newest first.
* Sort by price (lowest to highest):
  - Click sorting element.
  - Pick "Sort by price: low to high".
  - Ensure results are sorted by price, lowest first.
* Sort by price (highest to lowest):
  - Click sorting element.
  - Choose "Sort by price: high to low".
  - Confirm results are sorted by price, highest first.
* Close the browser.

#### Expected Results:
* Menu-order sorting:
  - The products should be displayed according to the default menu order set by the website administrators. Ensure that the order matches the expected arrangement specified by the website's administrators.
* Sort by popularity:
  - After selecting "Sort by popularity," the products should be rearranged based on their popularity, with the most popular products displayed first.
* Sort by rating:
  - Upon selecting "Sort by average rating," the products should be reordered according to their average rating, with the highest-rated products listed first.
* Sort by newness:
  - When opting for "Sort by newness," the products should be sorted based on their addition date, with the newest products appearing at the beginning of the list.
* Sort by price (lowest to highest):
  - After selecting "Sort by price: low to high," the products should be sorted in ascending order of price, with the lowest-priced products listed first.
* Sort by price (highest to lowest):
  - Upon choosing "Sort by price: high to low," the products should be arranged in descending order of price, with the highest-priced products displayed first.
