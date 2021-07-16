package steps;

import base.BasePage;
import io.cucumber.datatable.DataTable;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.junit.jupiter.api.Assertions;
import utils.DriverFactory1;

public class StepDefinitions {
    @Given("I navigate to url {string}")
    public void i_navigate_to_url(String url) {
        BasePage.homePage.navigateToUrl(url);
    }

    @Then("I should be navigated to home page")
    public void i_should_be_navigated_to_home_page() {
        String homePageTitle=BasePage.driverUtils.getPageTitle();
        System.out.println(homePageTitle);
    }

    @When("I click on login link from the navbar")
    public void i_click_on_login_link_from_the_navbar() {
        BasePage.homePage.clickLoginLink();
    }

    @Then("I should be navigated to login page")
    public void i_should_be_navigated_to_login_page() {
        BasePage.homePage.pageRefresh();
        String loginPageTitle=BasePage.driverUtils.getPageTitle();
        System.out.println(loginPageTitle);
    }

    @When("I enter email as {string}")
    public void i_enter_email_as(String em) {
        BasePage.loginPage.enterEmail(em);
    }

    @When("I enter password as {string}")
    public void i_enter_password_as(String pw) {
        BasePage.loginPage.enterPassword(pw);
    }
    @When("I click on login button")
    public void i_click_on_login_button() {
        BasePage.loginPage.clickLoginBtn();

    }

    @Then("I should be logged in successfully")
    public void i_should_be_logged_in_successfully() {
        String loginPageTitle=BasePage.driverUtils.getPageTitle();
        System.out.println(loginPageTitle);
    }


    @When("I click on register link from the navbar")
    public void i_click_on_register_link_from_the_navbar()
    {
        BasePage.homePage.clickRegisterLink();
    }

    @Then("I should be navigated to register page")
    public void i_should_be_navigated_to_register_page() {
        String registerPageTitle=BasePage.registerPage.getPageTitle();
        System.out.println(registerPageTitle);
        BasePage.homePage.pageRefresh();
    }
    @When("I select gender as female")
    public void i_select_gender_as_female() {
        BasePage.registerPage.clickFeMaleRadioButton();
    }
    @When("I enter firstName lastName email password confirmPassword")
    public void i_enter_first_name_last_name_email_password_confirm_password(io.cucumber.datatable.DataTable dataTable) {
        BasePage.registerPage.enterFirstName(dataTable.cell(1,0));
        BasePage.registerPage.enterLastName(dataTable.cell(1,1));
        BasePage.registerPage.enterEmail(dataTable.cell(1,2));
        BasePage.registerPage.enterPassword(dataTable.cell(1,3));
        BasePage.registerPage.enterConfPassword(dataTable.cell(1,4));
    }
    @When("I click on register button")
    public void i_click_on_register_button() {
        BasePage.registerPage.clickRegisterButton();
    }
    @Then("I should be registered successfully")
    public void i_should_be_registered_successfully() {
        System.out.println(BasePage.registerPage.verifyConfMessage());
    }


    @Then("I should see error message for all the mandatory fields")
    public void i_should_see_error_message_for_all_the_mandatory_fields() {
        System.out.println("register errorMsg");
    }

    @When("I click on Digital Download from navbar")
    public void i_click_on_digital_download_from_navbar() {
        BasePage.digitalDownloadsPage.clickDigitalLink();
    }

    @Then("I should be navigated to digital download page")
    public void i_should_be_navigated_to_digital_download_page() {
       String digitalDownloadActualTitle = BasePage.digitalDownloadsPage.getPageTitle();
       String digitalDownloadExpectedTitle= "nopCommerce demo store. Digital downloads";
        Assertions.assertEquals(digitalDownloadExpectedTitle,digitalDownloadActualTitle);
    }

    @When("I click on Science & Faith")
    public void i_click_on_science_faith() {
         BasePage.digitalDownloadsPage.waitForScienceFaithClickable();
        BasePage.digitalDownloadsPage.clickScienceFaithLink();

    }

    @Then("I should be navigated to science-faith page")
    public void i_should_be_navigated_to_science_faith_page() {
        BasePage.digitalDownloadsPage.waitForScienceFaithMsg();
        System.out.println("*******");
        System.out.println(BasePage.digitalDownloadsPage.getTextOfScienceFaith());

    }

    @When("I click on add to cart link")
    public void i_click_on_add_to_cart_link() {
        BasePage.digitalDownloadsPage.waitForAddToCartClickable();
       BasePage.digitalDownloadsPage.clickOnAddToCart();

    }

    @Then("I should see The product has been added to your shopping cart notification message on science-faith page")
    public void i_should_see_the_product_has_been_added_to_your_shopping_cart_notification_message_on_science_faith_page() {
        BasePage.digitalDownloadsPage.waitForNotification();
        System.out.println("*******");
        System.out.println(BasePage.digitalDownloadsPage.getTextOfNotification());
    }

    @When("I Click on close message button")
    public void i_click_on_close_message_button() {
        BasePage.digitalDownloadsPage.clickOnNotification();
    }

    @When("mouseHover on shopping cart")
    public void mouse_hover_on_shopping_cart() {
      BasePage.digitalDownloadsPage.mouseHoverOnSCart();
    }

    @Then("I should be see There are {int} item\\(s) in your cart message")
    public void i_should_be_see_there_are_item_s_in_your_cart_message(Integer int1) {
       System.out.println("kslkj");
    }

    @When("I click on go to cart link")
    public void i_click_on_go_to_cart_link() {
        BasePage.digitalDownloadsPage.waitForGoToCartClickable();
        BasePage.digitalDownloadsPage.clickOnGoTOCart();

    }

    @Then("I should be navigated to shopping cart page")
    public void i_should_be_navigated_to_shopping_cart_page() {
        String shoppingActualTitle = BasePage.driverUtils.getPageTitle();
        String shoppingExpectedTitle= "nopCommerce demo store. Shopping Cart";
        Assertions.assertEquals(shoppingExpectedTitle,shoppingActualTitle);

    }

    @When("I click on i agree check box")
    public void i_click_on_i_agree_check_box() {
        BasePage.digitalDownloadsPage.waitForCheckBoxClickable();
        BasePage.digitalDownloadsPage.clickOnCheckBox();
    }

    @When("I click on Checkout button")
    public void i_click_on_checkout_button() {
        BasePage.digitalDownloadsPage.waitForCheckOutClickable();
        BasePage.digitalDownloadsPage.clickOnCheckOutButton();

    }

    @When("I click on BooksLink from navbar")
    public void i_click_on_BooksLink_from_navbar() {
        BasePage.booksPage.clickOnBooks();
    }

    @Then("I should be navigated to Books page")
    public void i_should_be_navigated_to_books_page() {
        String booksPageActualTitle = BasePage.driverUtils.getPageTitle();
        String booksPageExpectedTitle= "nopCommerce demo store. Books";
        Assertions.assertEquals(booksPageExpectedTitle,booksPageActualTitle);
    }

    @When("I click on Pride and Prejudice")
    public void i_click_on_pride_and_prejudice() {
        BasePage.pridePage.waitForPrideClickable();
        BasePage.pridePage.clickOnPride();
    }
    @When("I click on add to cart link on Pride Page")
    public void i_click_on_add_to_cart_link_on_pride_page() {
        BasePage.pridePage.waitForAddToCartClickable();
        BasePage.pridePage.clickOnAddToCart();
    }

    @Then("I should be navigated to Pride and Prejudice page")
    public void i_should_be_navigated_to_pride_and_prejudice_page() {
        String pridePageActualTitle = BasePage.driverUtils.getPageTitle();
        String pridePageExpectedTitle= "nopCommerce demo store. Pride and Prejudice";
        Assertions.assertEquals(pridePageExpectedTitle,pridePageActualTitle);
    }


    @Then("I should see The product has been added to your shopping cart notification message on Pride and Prejudice page")
    public void i_should_see_the_product_has_been_added_to_your_shopping_cart_notification_message_on_pride_and_prejudice_page() {
        BasePage.booksPage.waitForGetProductMsg();
         BasePage.booksPage.getTheProductText();
    }

    @When("I click on close notification")
    public void i_click_on_close_notification() {
        BasePage.booksPage.clickOnNotification();
    }

    @When("I enter valid email id as {string} ,password as {string} and click on login button")
    public void i_enter_valid_email_id_as_password_as_and_click_on_login_button(String em, String pw) {
           BasePage.loginPage.enterEmail(em);
        BasePage.loginPage.enterPassword(pw);
        BasePage.loginPage.clickLoginBtn();
    }
    @Then("I should be navigated to checkout page")
    public void i_should_be_navigated_to_checkout_page() {
        String checkoutPageActualTitle = BasePage.driverUtils.getPageTitle();
        String checkoutPageExpectedTitle= "nopCommerce demo store. Checkout";
        Assertions.assertEquals(checkoutPageExpectedTitle,checkoutPageActualTitle);
    }
    @Then("I enter all the mandatory fields First name, Last name,Email,Country,city,Address {int},Zip\\/postal code,phone number and click on continue")
    public void i_enter_all_the_mandatory_fields_first_name_last_name_email_country_city_address_zip_postal_code_phone_number_and_click_on_continue(String fn,String ln, String em, String country1, String city, String add1, String zip, String ph) {
        BasePage.driverUtils.pageRefresh();
        BasePage.checkOutPage.enterFirstName(fn);
        BasePage.checkOutPage.enterLastName(ln);
          BasePage.checkOutPage.enterEmail(em);
          BasePage.checkOutPage.selectCountry(country1);
          BasePage.checkOutPage.enterCity(city);
          BasePage.checkOutPage.enterAddress(add1);
          BasePage.checkOutPage.enterZipCode(zip);
          BasePage.checkOutPage.enterPhoneNumber(ph);
          BasePage.checkOutPage.waitForContinueButtonClickable();
          BasePage.checkOutPage.clickOnContinue();
    }
    @When("I enter email as {string} password as {string} and click on login button")
    public void i_enter_email_as_password_as_and_click_on_login_button(String em, String pw) {
        BasePage.loginPage.enterEmail(em);
        BasePage.loginPage.enterPassword(pw);
        BasePage.loginPage.clickLoginBtn();
    }
    @When("I click on Add to wishlist button on science-faith page")
    public void i_click_on_add_to_wishlist_button_on_science_faith_page() {
           BasePage.digitalDownloadsPage.clickOnWishList();
    }
    @Then("I should see The product has been added to your wishlist notification")
    public void i_should_see_the_product_has_been_added_to_your_wishlist_notification() {
        BasePage.digitalDownloadsPage.waitwishListMsgGrab();
           System.out.println(BasePage.digitalDownloadsPage.wishListMsgGrab());
    }

    @When("I click on wishlist link")
    public void i_click_on_wishlist_link() {
        BasePage.digitalDownloadsPage.clickOnWishListBtn();
    }

    @When("I click on close message notification")
    public void i_click_on_close_message_notification() {
        BasePage.digitalDownloadsPage.clickOnWishClose();
    }
    @Then("I should be navigated to wishlist Page")
    public void i_should_be_navigated_to_wishlist_page() {
        String wishListPageActualTitle = BasePage.driverUtils.getPageTitle();
        String wishListPageExpectedTitle= "nopCommerce demo store. Wishlist";
        Assertions.assertEquals(wishListPageExpectedTitle,wishListPageActualTitle);
    }
    @When("I click on Add to compare list on science-faith page")
    public void i_click_on_add_to_compare_list_on_science_faith_page() {
        BasePage.addToCompare.waitForAddToCompClickable();
        BasePage.addToCompare.clickOnAddToCompare();
    }
    @Then("I should see The product has been added to your product comparison")
    public void i_should_see_the_product_has_been_added_to_your_product_comparison() {
        BasePage.digitalDownloadsPage.waitForNotification();
        System.out.println(BasePage.digitalDownloadsPage.getTextOfNotification());
    }
    @When("I click on compare products list in the footer")
    public void i_click_on_compare_products_list_in_the_footer() {
        BasePage.addToCompare.clickOnAddToCompareInFooter();
    }
    @Then("I should be navigated to compare products page")
    public void i_should_be_navigated_to_compare_products_page() {
        String addToComparePageActualTitle = BasePage.driverUtils.getPageTitle();
        String addToComparePageExpectedTitle= "nopCommerce demo store. Compare Products";
        Assertions.assertEquals(addToComparePageExpectedTitle,addToComparePageActualTitle);
    }
    @When("I click on clear button on compare list page")
    public void i_click_on_clear_button_on_compare_list_page() {
       BasePage.addToCompare.waitForClearButtonClickable();
            BasePage.addToCompare.clickOnClearBtn();
    }
    @Then("I should see You have no items to compare.")
    public void i_should_see_you_have_no_items_to_compare() {
        System.out.println(BasePage.addToCompare.getText());
    }
    @When("I click on Email a friend on science-faith page")
    public void i_click_on_email_a_friend_on_science_faith_page() {
        BasePage.emailAFriend.waitForEmailClickable();
        BasePage.emailAFriend.clickOnEmailAFriend();
    }
    @Then("I should be navigated to Email a friend page")
    public void i_should_be_navigated_to_email_a_friend_page() {
        String emailPageActualTitle = BasePage.driverUtils.getPageTitle();
        String emailPageExpectedTitle= "nopCommerce demo store. Email A Friend. Science & Faith";
        Assertions.assertEquals(emailPageExpectedTitle,emailPageActualTitle);
    }

    @Then("I fill all the mandatory fields fEmail yEmail and click on SEND EMAIL button")
    public void i_fill_all_the_mandatory_fields_f_email_y_email_and_click_on_send_email_button(io.cucumber.datatable.DataTable dataTable) {
        //BasePage.driverUtils.pageRefresh();
        System.out.println("*****");
        BasePage.emailAFriend.fEmail(dataTable.cell(1,0));
        BasePage.emailAFriend.yEmail(dataTable.cell(1,1));
        BasePage.emailAFriend.waitForSendEmailClickable();
        BasePage.emailAFriend.clickOnEmail();
    }

    @Then("I should see error message like Only registered customers can use email a friend feature")
    public void i_should_see_error_message_like_only_registered_customers_can_use_email_a_friend_feature() {
           System.out.println(BasePage.emailAFriend.getErrorMsg());
    }
    @When("I click on Remove shopping cart page")
    public void i_click_on_remove_shopping_cart_page() {
     BasePage.checkOutPage.clickOnRemoveBtn();
    }
    @Then("I should see Your Shopping Cart is empty")
    public void i_should_see_your_shopping_cart_is_empty() {
        System.out.println(BasePage.checkOutPage.getRemoveText());
    }
    @When("I change qty {int} for science-faith and click on update shopping cart button")
    public void i_change_qty_for_science_faith_and_click_on_update_shopping_cart_button(String one) {
         BasePage.checkOutPage.changeQty(one);
    }

    @Then("I should see the updated shopping page qty to {int}")
    public void i_should_see_the_updated_shopping_page_qty_to(Integer int1) {
       System.out.println("sTc");
    }
    @When("I click on add your review on Science & Faith page")
    public void i_click_on_add_your_review_on_science_faith_page() {
           BasePage.emailAFriend.clickOnAddReview();
    }
    @Then("I should be navigated to review page")
    public void i_should_be_navigated_to_review_page() {
        String reviewPageActualTitle = BasePage.driverUtils.getPageTitle();
        String reviewPageExpectedTitle= "nopCommerce demo store. Product Reviews. Science & Faith";
        Assertions.assertEquals(reviewPageExpectedTitle,reviewPageActualTitle);

    }
    @Then("I should see error message")
    public void i_should_see_error_message() {
      System.out.println(BasePage.emailAFriend.getReviwErrorMsg());
    }
    @When("I click on check on Add to cart check box on wishlist page and click on ADD TO CART button")
    public void i_click_on_check_on_add_to_cart_check_box_on_wishlist_page_and_click_on_add_to_cart_button() {
           BasePage.emailAFriend.clickOnCheckBox();
    }
    @When("I click on add to cart link on wishlist page")
    public void i_click_on_add_to_cart_link_on_wishlist_page() {
          BasePage.emailAFriend.clickOnAddtoCartWishList();
    }
    @Then("I should see error messsage")
    public void i_should_see_error_messsage() {
        BasePage.emailAFriend.waitErrorMsgWishList();
      System.out.println(BasePage.emailAFriend.getErrorMsgWishList());
    }
    @When("I click on Add to wishlist button on Pride and Prejudice page")
    public void i_click_on_add_to_wishlist_button_on_pride_and_prejudice_page() {
          BasePage.booksPage.clickOnAddToWishList();
    }
    @When("I click on Add to compare list on Pride and Prejudice page")
    public void i_click_on_add_to_compare_list_on_pride_and_prejudice_page() {
          BasePage.booksPage.clickOnAddToCompare();
    }
    @When("I click on First Prize Pies")
    public void i_click_on_first_prize_pies() {
        BasePage.firstPrizePies.waitForFirstPrizeClickable();
          BasePage.firstPrizePies.clickOnFirstPrize();
    }
    @Then("I should be navigated to First Prize Pies page")
    public void i_should_be_navigated_to_first_prize_pies_page() {
        String firstPrizePageActualTitle = BasePage.driverUtils.getPageTitle();
        String firstPrizePageExpectedTitle= "nopCommerce demo store. First Prize Pies";
        Assertions.assertEquals(firstPrizePageExpectedTitle,firstPrizePageActualTitle);

    }
    @When("I click on add to cart link on First Prize")
    public void i_click_on_add_to_cart_link_on_first_prize() {
        BasePage.firstPrizePies.clickOnAddToCart();

    }

    @Then("I should see The product has been added to your shopping cart notification message on First Prize Pies page")
    public void i_should_see_the_product_has_been_added_to_your_shopping_cart_notification_message_on_first_prize_pies_page() {
        BasePage.digitalDownloadsPage.waitForNotification();
        System.out.println("*******");
        System.out.println(BasePage.digitalDownloadsPage.getTextOfNotification());
    }
    @When("I click on Fahrenheit by Ray Bradbury")
    public void i_click_on_fahrenheit_by_ray_bradbury() {
        BasePage.fahrenheitPage.ClickOnFahrenheit();
    }
    @Then("I should be navigated to Fahrenheit by Ray Bradbury page")
    public void i_should_be_navigated_to_fahrenheit_by_ray_bradbury_page() {
        String fahrenheitPageActualTitle =BasePage.driverUtils.getPageTitle();
        String fahrenheitPageExpectedTitle = "nopCommerce demo store. Fahrenheit 451 by Ray Bradbury";
        Assertions.assertEquals(fahrenheitPageExpectedTitle,fahrenheitPageActualTitle);
    }
    @Then("I should see The product has been added to your shopping cart notification message on Fahrenheit by Ray Bradbury page")
    public void i_should_see_the_product_has_been_added_to_your_shopping_cart_notification_message_on_fahrenheit_by_ray_bradbury_page() {
        BasePage.digitalDownloadsPage.waitForNotification();
        System.out.println("*******");
        System.out.println(BasePage.digitalDownloadsPage.getTextOfNotification());
    }
    @When("I enter email id as {string} password as {string} and click on login button")
    public void i_enter_email_id_as_password_as_and_click_on_login_button(String em, String pw) {
        BasePage.loginPage.loginToNop(em,pw);
    }
    @When("I enter all the mandatory fields")
    public void i_enter_all_the_mandatory_fields(io.cucumber.datatable.DataTable dataTable) {
        BasePage.driverUtils.pageRefresh();
        BasePage.checkOutPage.selectCountry(dataTable.cell(1,0));
        //BasePage.checkOutPage.selectState(dataTable.cell(1,1));
        BasePage.checkOutPage.enterCity(dataTable.cell(1,1));
        BasePage.checkOutPage.enterAddress(dataTable.cell(1,2));
        BasePage.checkOutPage.enterZipCode(dataTable.cell(1,3));
        BasePage.checkOutPage.enterPhoneNumber(dataTable.cell(1,4));

    }
    @When("I click on continue button")
    public void i_click_on_continue_button() {
        BasePage.checkOutPage.waitForContinueButtonClickable();
        BasePage.checkOutPage.clickOnContinue();
    }
    @When("I click on continue button on billing page")
    public void i_click_on_continue_button_on_billing_page() {
        BasePage.checkOutPage.clickOnContinueAdd();
    }

    @When("I click on continue on payment page")
    public void i_click_on_continue_on_payment_page() {
        BasePage.checkOutPage.clickOnContinuePayment();
    }

    @When("I click on continue payment info")
    public void i_click_on_continue_payment_info() {
        BasePage.checkOutPage.clickOnContinuePaymentInfo();
    }

    @When("I click on continue confirm billing")
    public void i_click_on_continue_confirm_billing() {
        BasePage.checkOutPage.clickOnConfirm();
    }

    @Then("I should see Your order has been successfully processed! message")
    public void i_should_see_your_order_has_been_successfully_processed_message() {
        BasePage.checkOutPage.getTextOfSuccess();
    }

    @When("I click on continue last button")
    public void i_click_on_continue_last_button() {
        BasePage.checkOutPage.clickOnContinueThank();
    }







}
