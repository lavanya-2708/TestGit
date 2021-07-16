package pageObjects;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

public class PridePage {
    WebDriver driver;
    WebDriverWait wait;

    @FindBy(linkText = "Pride and Prejudice")
    public WebElement prideLink;

    @FindBy(xpath = "//h1[text()='Pride and Prejudice']")
    public WebElement getTheMsg;

    @FindBy(css = "button#add-to-cart-button-39")
    public WebElement addToCartLink;

    public PridePage(WebDriver driver){
        this.driver=driver;
        PageFactory.initElements(driver,this);
    }

    public void clickOnPride() {
        prideLink.click();
    }

    public void waitForPrideClickable() {
        wait = new WebDriverWait(driver, 50);
        wait.until(ExpectedConditions.elementToBeClickable(prideLink));
    }
    public String getTheText() {
        return getTheMsg.getText();

    }
    public void waitForAddToCartClickable() {
        wait = new WebDriverWait(driver, 60);
        wait.until(ExpectedConditions.elementToBeClickable(addToCartLink));
    }
    public void clickOnAddToCart(){
        addToCartLink.click();
    }
}
