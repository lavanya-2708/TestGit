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
import utils.DriverFactory1;

public class DigitalDownloadsPage {
    WebDriver driver;
    WebDriverWait wait;
    boolean isCheckboxClicked;


    @FindBy(linkText = "Digital downloads")
    public WebElement digitalDownloadsLink;

    @FindBy(linkText = "Night Visions")
    public WebElement nightVisionLink;

    @FindBy(linkText = "If You Wait (donation)")
    public WebElement ifYouWaitLink;

    @FindBy(linkText = "Science & Faith")
    public WebElement scienceFaithLink;

    @FindBy(xpath = "//h1[text()='Science & Faith']")
    public WebElement verifyScienceFaith;

    @FindBy(css = "button#add-to-cart-button-36")
    public WebElement addToCartLink;

    @FindBy(xpath = "//p[@class='content']")
    public WebElement getNotification;

    @FindBy(className = "close")
    public WebElement closeNotification;

    @FindBy(xpath = "//span[@class='close']")
    public WebElement wishCloseNotification;

    @FindBy(className = "cart-label")
    public WebElement shoppingCart;

    @FindBy(css = "button.cart-button")
    public WebElement goToCartLink;

    @FindBy(css = "input#termsofservice")
    public WebElement iAgreeCheckBox;

    @FindBy(css = "button.checkout-button")
    public WebElement checkOutButton;

    @FindBy(id="Email")
    public WebElement emailTextBox;

    @FindBy(id="Password")
    public WebElement passwordTextBox;

    @FindBy(css = "button.login-button")
    public WebElement loginButton;

    @FindBy(id = "add-to-wishlist-button-36")
    public WebElement wishListLink;

    @FindBy(css = "p.content")
    public WebElement wishListNoti;

    @FindBy(className = "wishlist-label")
    public WebElement wishListBtn;

    public  DigitalDownloadsPage(WebDriver driver){
        this.driver=driver;
        PageFactory.initElements(driver, this);
    }

    public void clickDigitalLink(){
        digitalDownloadsLink.click();
    }

    public void clickNightVisionLink(){
        nightVisionLink.click();
    }

    public void clickIfYouWaitLink(){
        ifYouWaitLink.click();
    }

    public void clickScienceFaithLink(){
        scienceFaithLink.click();
    }

    public String getTextOfScienceFaith(){
      return verifyScienceFaith.getText();
    }

    public void clickOnAddToCart(){
        addToCartLink.click();
    }

    public void waitForScienceFaithClickable() {
        wait = new WebDriverWait(DriverFactory1.driver, 30);
        wait.until(ExpectedConditions.elementToBeClickable(scienceFaithLink));
    }

    public String getTextOfNotification(){
        return getNotification.getText();
    }

    public void clickOnNotification(){
        closeNotification.click();
    }

    public void waitForScienceFaithMsg() {
        wait = new WebDriverWait(driver, 30);
        wait.until(ExpectedConditions.visibilityOf(verifyScienceFaith));
    }
    public void waitForNotification() {
        wait = new WebDriverWait(driver, 30);
        wait.until(ExpectedConditions.visibilityOf(getNotification));
    }
    public void waitForAddToCartClickable() {
        wait = new WebDriverWait(driver, 60);
        wait.until(ExpectedConditions.elementToBeClickable(addToCartLink));
    }

    public void mouseHoverOnSCart(){
        Actions actions=new Actions(driver);
        actions.moveToElement(shoppingCart).perform();
    }
    public void clickOnGoTOCart(){
        goToCartLink.click();
    }
    public void waitForGoToCartClickable() {
        wait = new WebDriverWait(driver, 40);
        wait.until(ExpectedConditions.elementToBeClickable(goToCartLink));
    }

    public String getPageTitle()
    {
        return driver.getTitle();
    }

    public String verifyConfMessage()
    {
        return getNotification.getText();
    }

    public void clickOnCheckBox(){
        JavascriptExecutor js=(JavascriptExecutor) driver;
        js.executeScript("arguments[0].click();",iAgreeCheckBox);
       // iAgreeCheckBox.click();
        isCheckboxClicked = iAgreeCheckBox.isSelected();
        System.out.println(isCheckboxClicked);
        Assertions.assertTrue(isCheckboxClicked,"terma and conditions checkbox is clicked");
    }

    public void clickOnCheckOutButton(){
        checkOutButton.click();
    }

    public void waitForCheckOutClickable() {
        wait = new WebDriverWait(driver, 60);
        wait.until(ExpectedConditions.elementToBeClickable(checkOutButton));
    }
    public void waitForCheckBoxClickable() {
        wait = new WebDriverWait(driver, 60);
        wait.until(ExpectedConditions.elementToBeClickable(iAgreeCheckBox));
    }

    public void clickOnWishList(){
        wishListLink.click();
    }
    public String wishListMsgGrab(){
        return wishListNoti.getText();

    }
    public void waitwishListMsgGrab() {
        wait = new WebDriverWait(driver, 30);
        wait.until(ExpectedConditions.visibilityOf(wishListNoti));
    }

    public void clickOnWishListBtn(){
        wishListBtn.click();
    }

    public void clickOnWishClose(){
        wishCloseNotification.click();
    }





}
