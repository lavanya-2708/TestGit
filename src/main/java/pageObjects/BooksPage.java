package pageObjects;

import org.junit.jupiter.api.Assertions;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

public class BooksPage {
    WebDriver driver;
    WebDriverWait wait;
    boolean isCheckboxClicked;

    @FindBy(linkText = "Books")
    public WebElement booksLink;

    @FindBy(linkText = "Show details for First Prize Pies")
    public WebElement firstPrizeLink;

    @FindBy(css = "p.content")
    public WebElement getTheProductMsg;

    @FindBy(xpath = "//span[@class='cart-label']")
    public WebElement soppingCartLink;

    @FindBy(css = "button.cart-button")
    public WebElement goToCartLink;

    @FindBy(className = "close")
    public WebElement closeLink;

    @FindBy(css = "input#termsofservice")
    public WebElement iAgreeCheckBox;

    @FindBy(css = "button.checkout-button")
    public WebElement checkOutButton;

    @FindBy(className = "close")
    public WebElement closeNotification;

    @FindBy(id = "add-to-wishlist-button-39")
    public WebElement addToWishList;

    @FindBy(className = ".compare-products")
    public WebElement addToComparePride;

    public BooksPage(WebDriver driver) {
        this.driver = driver;
        PageFactory.initElements(driver, this);
    }

    public void clickOnBooks() {
        booksLink.click();
    }

    public void clickOnFirst() {
        firstPrizeLink.click();
    }

    public void waitForGetProductMsg() {
        wait = new WebDriverWait(driver, 30);
        wait.until(ExpectedConditions.visibilityOf(getTheProductMsg));
    }
    public void waitForGoToCartClickable() {
        wait = new WebDriverWait(driver, 30);
        wait.until(ExpectedConditions.elementToBeClickable(goToCartLink));
    }

    public void waitForCheckOutClickable() {
        wait = new WebDriverWait(driver, 30);
        wait.until(ExpectedConditions.elementToBeClickable(checkOutButton));
    }
    public void waitForCheckBoxClickable() {
        wait = new WebDriverWait(driver, 30);
        wait.until(ExpectedConditions.elementToBeClickable(iAgreeCheckBox));
    }


    public String getPageTitle() {
        return driver.getTitle();
    }

    public void clickOnNotification(){
        closeNotification.click();
    }





    public String getTheProductText() {
        return getTheProductMsg.getText();
    }

    public void clickOnCancelLink(){
       closeLink.click();
    }


    public void mouseHoverOnSCart(){
        Actions actions=new Actions(driver);
        actions.moveToElement(soppingCartLink).perform();
    }

    public void clickOnGoToCart(){
        goToCartLink.click();
    }

    public void clickOnCheckBox(){
        JavascriptExecutor js=(JavascriptExecutor) driver;
        js.executeScript("arguments[0].click();",iAgreeCheckBox);
        iAgreeCheckBox.click();
        isCheckboxClicked = iAgreeCheckBox.isSelected();
        System.out.println(isCheckboxClicked);
        Assertions.assertTrue(isCheckboxClicked,"terma and conditions checkbox is clicked");
    }

    public void clickOnCheckOutButton(){
        checkOutButton.click();
    }

    public void clickOnAddToWishList(){
        addToWishList.click();
    }

    public void clickOnAddToCompare(){
        addToComparePride.click();
    }





}
