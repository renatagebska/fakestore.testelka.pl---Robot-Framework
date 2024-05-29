# fakestore.testelka.pl-Robot-Framework
## Automation of Test Cases using Robot Framework and Selenium Library
This repository contains functional tests for various functionalities of the FakeStore website including user registration, login, adding products, sorting, and order checkout functionality. The tests are written using Robot Framework and Selenium Library.

## Table of Contents

- [Test Cases](#test-cases)
- [Project Structure](#project-structure)
- [Setup](#setup)
- [Running Tests](#running-tests)

## Test Cases:

### Test Case: User Registration Functionality
### ID: 001

### Test 1
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

### Test 2
### Title: Verify that an error message appears when trying to register without providing an email address.

#### Steps:
* Open the Chrome browser.
* Maximize the window.
* Navigate to the website: https://fakestore.testelka.pl/
* Locate and click the "My Account" link.
* Locate the "Password" field and enter a password.
* Locate and click the "Register" button.
* Close the browser.

#### Expected Results:
After clicking the "Register" button, an error message requesting the email address should appear.

### Test 3
### Title: Verify that an error message appears when trying to register without providing a password.

#### Steps:
* Open the Chrome browser.
* Maximize the window.
* Navigate to the website: https://fakestore.testelka.pl/
* Locate and click the "My Account" link.
* Locate the "Email Address" field and enter a valid email address.
* Locate and click the "Register" button.
* Close the browser.

#### Expected Results:
After clicking the "Register" button, an error message requesting the password should appear.

### Test Case: Login Functionality
### ID: 002

### Test 1, 2, 3
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

### Test 4
### Title: Verify that an error message appears when trying to log in without providing an email address.

#### Steps:
* Open the Chrome browser.
* Maximize the window.
* Navigate to the website: https://fakestore.testelka.pl/
* Locate and click the "My Account" link.
* Locate the "Password" field and enter the correct password.
* Locate and click the "Login" button.
* Close the browser.

#### Expected Results:
After clicking the "Login" button, an error message requesting the email address should appear.

### Test 5
### Title: Verify that an error message appears when trying to log in without providing a password.

#### Steps:
* Open the Chrome browser.
* Maximize the window.
* Navigate to the website: https://fakestore.testelka.pl/
* Locate and click the "My Account" link.
* Locate the "Email Address" field and enter a valid email address.
* Locate and click the "Login" button.
* Close the browser.

#### Expected Results:
After clicking the "Login" button, an error message requesting the password should appear.

### Test 6
### Title: Verify that an error message appears when trying to log in with an unregistered user.

#### Steps:
* Open the Chrome browser.
* Maximize the window.
* Navigate to the website: https://fakestore.testelka.pl/
* Locate and click the "My Account" link.
* Locate the "Email Address" field and enter an invalid email address.
* Locate the "Password" field and enter an incorrect password.
* Locate and click the "Login" button.
* Close the browser.

#### Expected Results:
After clicking the "Login" button, an error message requesting correct login data should appear.

### Test Case: Adding to Cart Functionality
### ID: 003
### Test 1
### Title: Verify that a user can successfully add products from the climbing and yoga categories to the cart.

#### Steps:
* Open the Chrome browser.
* Maximize the window.
* Navigate to the website: https://fakestore.testelka.pl/
* Locate and click the "Shop" link.
* Locate and click the "Climbing" link.
* Locate the sorting field and sort products by popularity.
* Click on the first displayed product.
* Locate and click the product quantity field.
* Clear the quantity field.
* Enter the quantity 1.
* Click the "Add to Cart" button.
* Locate and click the "Shop" link.
* Locate the "Yoga and Pilates" link.
* Locate the sorting field and sort products by price: lowest first.
* Click on the second displayed product.
* Clear the quantity field.
* Enter the quantity 2.
* Click the "Add to Cart" button.
* Locate and click the "Cart" link.
* Close the browser.

#### Expected Results:
* After step 3: The page https://fakestore.testelka.pl/ loads correctly.
* After step 4: A page with available products is displayed.
* After step 5: Climbing products are displayed.
* After step 6: Products are sorted by popularity.
* After steps 7-11: The first displayed product with a quantity of 1 is added to the cart.
* After steps 12-19: The second displayed product from the "Yoga and Pilates" category sorted by price (lowest first) with a quantity of 2 is added to the cart.
* After step 19: The cart contents are displayed.
* After step 20: The browser is closed.

### Test 2
### Title: Verify that a user can successfully add products from the windsurfing and sailing categories to the cart.

#### Steps:
* Open the Chrome browser.
* Maximize the window.
* Navigate to the website: https://fakestore.testelka.pl/
* Locate and click the "Shop" link.
* Locate and click the "Windsurfing" link.
* Locate the sorting field and sort products by date.
* Click on the third displayed product.
* Locate and click the product quantity field.
* Clear the quantity field.
* Enter the quantity 3.
* Click the "Add to Cart" button.
* Locate and click the "Shop" link.
* Locate the "Sailing" link.
* Locate the sorting field and sort products by price: highest first.
* Click on the first displayed product.
* Clear the quantity field.
* Enter the quantity 1.
* Click the "Add to Cart" button.
* Locate and click the "Cart" link.
* Close the browser.

#### Expected Results:
* After step 3: The page https://fakestore.testelka.pl/ loads correctly.
* After step 4: A page with available products is displayed.
* After step 5: Windsurfing products are displayed.
* After step 6: Products are sorted by date.
* After steps 7-11: The third displayed product with a quantity of 3 is added to the cart.
* After steps 12-19: The first displayed product from the "Sailing" category sorted by price (highest first) with a quantity of 1 is added to the cart.
* After step 19: The cart contents are displayed.
* After step 20: The browser is closed.

### Test 3
### Title: Verify if the user can successfully add products from the Yoga and Climbing categories to the cart.

#### Steps:
* Open Chrome browser.
* Maximize the window.
* Navigate to: https://fakestore.testelka.pl/
* Locate and click the "Shop" link.
* Locate and click the "Yoga" link.
* Locate the sorting box and sort products by average rating.
* Click on the fifth displayed product.
* Locate and click the quantity input field.
* Clear the quantity input field.
* Enter the quantity as 2.
* Click the "Add to Cart" button.
* Locate and click the "Shop" link.
* Locate the "Climbing" link.
* Locate the sorting box and sort products by price: low to high.
* Click on the third displayed product.
* Clear the quantity input field.
* Enter the quantity as 5.
* Click the "Add to Cart" button.
* Locate and click the "Cart" link.
* Close the browser.
  
#### Expected Results:
* Step 3: The https://fakestore.testelka.pl/ page should load correctly.
* Step 4: The page with available products should be displayed.
* Step 5: The page with Yoga products should be displayed.
* Step 6: Products should be sorted by average rating.
* Steps 7-11: The fifth displayed product in quantity of 2 should be added to the cart.
* Steps 12-19: The third displayed product from the "Climbing" category sorted by price: low to high, in quantity of 5 should be added to the cart.
* Step 19: The cart contents should be displayed.
* Step 20: The browser should close.

### Test Case: Order Checkout Process
### ID: 004
### Test 1
### Title: Verify if the user can successfully complete an order process by adding products from Windsurfing and Sailing categories, using a coupon, and filling in payment details.

#### Steps:
* Open Chrome browser.
* Maximize the window.
* Navigate to: https://fakestore.testelka.pl/
* Locate and click the "Shop" link.
* Locate and click the "Windsurfing" link.
* Click on the third displayed product.
* Locate and click the quantity input field.
* Clear the quantity input field.
* Enter the quantity as 2.
* Click the "Add to Cart" button.
* Locate and click the "Shop" link.
* Locate the "Sailing" link.
* Click on the first displayed product.
* Clear the quantity input field.
* Enter the quantity as 3.
* Click the "Add to Cart" button.
* Locate and click the "Cart" link.
* Locate and clear the "Coupon Code" field. Enter the first code from the list.
* Locate and click the "Apply Coupon" button.
* Locate and click the "Proceed to Checkout" button.
* Fill in payment details: first name, last name, street address, postal code, city, phone, email address, any additional information, card number, expiration date, CVC code.
* Accept the terms and locate and click the "Place Order" button.
* Close the browser.

#### Expected Results:
* Steps 1-16: The selected products from Windsurfing and Sailing categories should be added to the cart.
* Steps 18-19: Upon entering the coupon code and clicking the "Apply Coupon" button, the coupon should be applied and any changes in the cart or order price should be reflected.
* Steps 20-21: Proceed to the payment section where the user should enter valid payment details including card information.
* Step 22: The user should receive an order confirmation and be redirected to the order confirmation page.
* Step 23: The browser should close.

### Test 2
### Title: Verify if the user can successfully complete an order process by adding products from Windsurfing and Sailing categories, using a coupon, and filling in payment details with the card number omitted.

#### Steps:
* Open Chrome browser.
* Maximize the window.
* Navigate to: https://fakestore.testelka.pl/
* Locate and click the "Shop" link.
* Locate and click the "Windsurfing" link.
* Click on the first displayed product.
* Locate and click the quantity input field.
* Clear the quantity input field.
* Enter the quantity as 2.
* Click the "Add to Cart" button.
* Locate and click the "Shop" link.
* Locate the "Sailing" link.
* Click on the first displayed product.
* Clear the quantity input field.
* Enter the quantity as 1.
* Click the "Add to Cart" button.
* Locate and click the "Cart" link.
* Locate and clear the "Coupon Code" field. Enter the second code from the list.
* Locate and click the "Apply Coupon" button.
* Locate and click the "Proceed to Checkout" button.
* Fill in payment details: first name, last name, street address, postal code, city, phone, email address, any additional information, expiration date, CVC code. Leave the card number field empty.
* Accept the terms and locate and click the "Place Order" button.
* Close the browser.

#### Expected Results:
* Steps 1-16: The selected products from Windsurfing and Sailing categories should be added to the cart.
* Steps 18-19: Upon entering the coupon code and clicking the "Apply Coupon" button, the coupon should be applied and any changes in the cart or order price should be reflected.
* Steps 20-21: Proceed to the payment section where the user should enter valid payment details, leaving the card number field empty.
* Step 22: An error message should appear prompting the user to enter the card number.
* Step 23: The browser should close.

### Test 3
### Title: Verify if the user can successfully complete an order process by adding products from Windsurfing and Sailing categories, using a coupon, and filling in payment details with the expiration date omitted.

#### Steps:
* Open Chrome browser.
* Maximize the window.
* Navigate to: https://fakestore.testelka.pl/
* Locate and click the "Shop" link.
* Locate and click the "Windsurfing" link.
* Click on the third displayed product.
* Locate and click the quantity input field.
* Clear the quantity input field.
* Enter the quantity as 2.
* Click the "Add to Cart" button.
* Locate and click the "Shop" link.
* Locate the "Sailing" link.
* Click on the first displayed product.
* Clear the quantity input field.
* Enter the quantity as 3.
* Click the "Add to Cart" button.
* Locate and click the "Cart" link.
* Locate and clear the "Coupon Code" field. Enter the third code from the list.
* Locate and click the "Apply Coupon" button.
* Locate and click the "Proceed to Checkout" button.
* Fill in payment details: first name, last name, street address, postal code, city, phone, email address, any additional information, card number, CVC code. Leave the expiration date field empty.
* Accept the terms and locate and click the "Place Order" button.
* Close the browser.

#### Expected Results:
* Steps 1-16: The selected products from Windsurfing and Sailing categories should be added to the cart.
* Steps 18-19: Upon entering the coupon code and clicking the "Apply Coupon" button, the coupon should be applied and any changes in the cart or order price should be reflected.
* Steps 20-21: Proceed to the payment section where the user should enter valid payment details, leaving the expiration date field empty.
* Step 22: An error message should appear prompting the user to enter the expiration date.
* Step 23: The browser should close.

### Test 4
### Title: Verify if the user can successfully complete an order process by adding products from Windsurfing and Sailing categories, using a coupon, and filling in payment details with the CVC code omitted.

#### Steps:
* Open Chrome browser.
* Maximize the window.
* Navigate to: https://fakestore.testelka.pl/
* Locate and click the "Shop" link.
* Locate and click the "Windsurfing" link.
* Click on the second displayed product.
* Locate and click the quantity input field.
* Clear the quantity input field.
* Enter the quantity as 1.
* Click the "Add to Cart" button.
* Locate and click the "Shop" link.
* Locate the "Sailing" link.
* Click on the first displayed product.
* Clear the quantity input field.
* Enter the quantity as 1.
* Click the "Add to Cart" button.
* Locate and click the "Cart" link.
* Locate and clear the "Coupon Code" field. Enter the fourth code from the list.
* Locate and click the "Apply Coupon" button.
* Locate and click the "Proceed to Checkout" button.
* Fill in payment details: first name, last name, street address, postal code, city, phone, email address, any additional information, card number, expiration date. Leave the CVC code field empty.
* Accept the terms and locate and click the "Place Order" button.
* Close the browser.

#### Expected Results:
* Steps 1-16: The selected products from Windsurfing and Sailing categories should be added to the cart.
* Steps 18-19: Upon entering the coupon code and clicking the "Apply Coupon" button, the coupon should be applied and any changes in the cart or order price should be reflected.
* Steps 20-21: Proceed to the payment section where the user should enter valid payment details, leaving the CVC code field empty.
* Step 22: An error message should appear prompting the user to enter the CVC code.
* Step 23: The browser should close.

### Test Case: Product Sorting Functionality
### ID: 005
### Test 1
### Title: Verify if a user can successfully sort Climbing products.

#### Steps:
* Open the Chrome browser.
* Maximize the window.
* Navigate to the website: https://fakestore.testelka.pl/
* Locate and click the "Store" link.
* Locate and click the "Climbing" link.
* Locate the sorting dropdown and sort the products sequentially by: default sorting, popularity, average rating, newest, price: low to high, price: high to low.
* Close the browser.

#### Expected Results:
For each sorting option, the system should display the products in the expected order, ensuring consistency and intuitiveness for users.

### Test 2
### Title: Verify that the user can successfully sort products in the Climbing category by ascending price.

#### Steps:
* Open the Chrome browser.
* Maximize the window.
* Navigate to the website: https://fakestore.testelka.pl/
* Locate and click the "Store" link.
* Locate and click the "Climbing" link.
* Locate the sorting dropdown and sort the products by: price: low to high.
* Close the browser.

#### Expected Results:
Upon selecting the ascending price sorting option, the product prices on the page should be ordered from lowest to highest.

### Test 3
### Title: Verify that the user can successfully sort products in the Climbing category by descending price.

#### Steps:
* Open the Chrome browser.
* Maximize the window.
* Navigate to the website: https://fakestore.testelka.pl/
* Locate and click the "Store" link.
* Locate and click the "Climbing" link.
* Locate the sorting dropdown and sort the products by: price: high to low.
* Close the browser.

#### Expected Results:
Upon selecting the descending price sorting option, the product prices on the page should be ordered from highest to lowest.

## Project Structure

```plaintext
.
├── Resources
│   ├── Keywords
│   │   ├── CartKeywords.robot
│   │   ├── CheckoutKeywords.robot
│   │   ├── CommonKeywords.robot
│   │   ├── LoginKeywords.robot
│   │   ├── RegistrationKeywords.robot
│   │   └── SortKeywords.robot
│   ├── Variables
│   │   ├── CartVariables.robot
│   │   ├── CheckoutVariables.robot
│   │   ├── CommonVariables.robot
│   │   ├── LoginVariables.robot
│   │   ├── ProductsVariables.robot
│   │   ├── RegistrationVariables.robot
│   │   └── SortVariables.robot
├── Results
│   ├── TestCase001
│   │   ├── Screenshots
│   │   ├── log.html
│   │   ├── output.xml
│   │   └── report.html
│   ├── TestCase002
│   │   ├── Screenshots
│   │   ├── log.html
│   │   ├── output.xml
│   │   └── report.html
│   ├── TestCase003
│   │   ├── Screenshots
│   │   ├── log.html
│   │   ├── output.xml
│   │   └── report.html
│   ├── TestCase004
│   │   ├── Screenshots
│   │   ├── log.html
│   │   ├── output.xml
│   │   └── report.html
│   └── TestCase005
│       ├── Screenshots
│       ├── log.html
│       ├── output.xml
│       └── report.html
├── Tests
│   ├── chromedriver.exe
│   ├── TestCase001.robot
│   ├── TestCase002.robot
│   ├── TestCase003.robot
│   ├── TestCase004.robot
│   └── TestCase005.robot
├── .gitignore
├── README.md
└── requirements.txt
```
## Setup

### Clone the repository:

```sh
git clone git clone https://github.com/renatagebska/fakestore.testelka.pl---Robot-Framework
cd fakestore.testelka.pl---Robot-Framework
```

### Create a virtual environment and activate it:
##### macOS i Linux:
```sh
# Creating the virtual environment
python3 -m venv venv

# Activating the virtual environment
source venv/bin/activate
```
##### Windows
```sh
# Creating the virtual environment
python -m venv venv

# Activating the virtual environment
venv\Scripts\activate
```
### Install the required packages:
```sh
pip install -r requirements.txt
```
### Ensure you have the Chrome WebDriver installed and it's in your PATH. You can download it [here](https://developer.chrome.com/docs/chromedriver/downloads?hl=pl).

## Running Tests
##### Use the `robot` command to execute the test cases. You can specify individual test case files or directories containing multiple test case files. For example:

    ```sh
    robot TestCase001.robot
    ```
    This command runs the test case file `TestCase001.robot`.

    ```sh
    robot Tests/
    ```
    This command runs all test case files in the `Tests` directory.

##### To run Robot Framework tests and specify the output directory, use the following command:

```sh
robot --outputdir Results Tests/
```
