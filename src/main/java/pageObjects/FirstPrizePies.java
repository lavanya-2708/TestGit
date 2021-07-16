package pageObjects;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

public class FirstPrizePies {
    WebDriver driver;
    WebDriverWait wait;

    @FindBy(linkText = "First Prize Pies")
    public WebElement firstPrizeLink;

    @FindBy(css = "button#add-to-cart-button-38")
    public WebElement addToCartLink;

    public FirstPrizePies(WebDriver driver){
        this.driver=driver;
        PageFactory.initElements(driver,this);
    }

    public void clickOnFirstPrize(){
        firstPrizeLink.click();
    }
    public void waitForFirstPrizeClickable() {
        wait = new WebDriverWait(driver, 30);
        wait.until(ExpectedConditions.elementToBeClickable(firstPrizeLink));
    }
    public void clickOnAddToCart(){
        addToCartLink.click();
    }
}
