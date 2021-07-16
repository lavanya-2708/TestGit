package pageObjects;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

public class EmailAFriend {
    WebDriver driver;
    WebDriverWait wait;

    @FindBy(xpath = "//button[@class='button-2 email-a-friend-button']")
    public WebElement emailAFriendLink;

    @FindBy(css = "input#FriendEmail")
    public WebElement friendEmail;
    @FindBy(css = "input#YourEmailAddress")
    public WebElement yourEmail;

    @FindBy(xpath = "//*[contains(text(),'Only registered')]")
    public WebElement erroMsg;

    @FindBy(css = "button.send-email-a-friend-button")
    public WebElement emailButton;

    @FindBy(linkText = "Add your review")
    public WebElement addReview;

    @FindBy(xpath = "//*[contains(text(),'can write reviews')]")
    public WebElement reviewErrorMsg;

    @FindBy(xpath = "//input[@name='addtocart']")
    public WebElement checkBoxWishList;

    @FindBy(css = "button.wishlist-add-to-cart-button")
    public WebElement addToCartWishList;

    @FindBy(xpath = "p[text()='No products selected to add to cart.']")
    public WebElement errorMsgWishList;


    public EmailAFriend(WebDriver driver){
        this.driver=driver;
        PageFactory.initElements(driver,this);
    }

    public void clickOnEmailAFriend(){
        emailAFriendLink.click();
    }
    public void waitForEmailClickable() {
        wait = new WebDriverWait(driver, 40);
        wait.until(ExpectedConditions.elementToBeClickable(emailAFriendLink));
    }
    public void fEmail(String fe){
        friendEmail.sendKeys(fe);
    }
    public void yEmail(String ye){
        yourEmail.sendKeys(ye);
    }

    public void clickOnEmail(){
        emailButton.click();
    }
    public void waitForSendEmailClickable() {
        wait = new WebDriverWait(driver, 60);
        wait.until(ExpectedConditions.elementToBeClickable(emailButton));
    }
   public void sendingEmail(String fe,String ye){
       friendEmail.sendKeys(fe);
       yourEmail.sendKeys(ye);
       emailButton.click();
   }
   public String getErrorMsg(){
        return erroMsg.getText();
    }

    public void clickOnAddReview(){
        addReview.click();
    }

    public String getReviwErrorMsg(){
        return reviewErrorMsg.getText();
    }
    public void clickOnCheckBox(){
        checkBoxWishList.click();
    }
    public void clickOnAddtoCartWishList(){
        addToCartWishList.click();
    }
    public String getErrorMsgWishList(){
        return errorMsgWishList.getText();
    }
    public void waitErrorMsgWishList() {
        wait = new WebDriverWait(driver, 60);
        wait.until(ExpectedConditions.visibilityOf(errorMsgWishList));
    }

}
