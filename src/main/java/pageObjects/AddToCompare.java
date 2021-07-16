package pageObjects;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

public class AddToCompare {
    WebDriver driver;
    WebDriverWait wait;

    @FindBy(css = "button.add-to-compare-list-button")
    public WebElement addToCompareLink;

    @FindBy(linkText = "Compare products list")
    public WebElement addToCompareFooter;

    @FindBy(css = "a.clear-list")
    public WebElement clearButton;

    @FindBy(xpath = "//div[text()='You have no items to compare.']")
    public WebElement grabMsg;


    public AddToCompare(WebDriver driver){
        this.driver=driver;
        PageFactory.initElements(driver,this);
    }
    public void waitForAddToCompClickable() {
        wait = new WebDriverWait(driver, 60);
        wait.until(ExpectedConditions.elementToBeClickable(addToCompareLink));
    }
    public void clickOnAddToCompare(){
        addToCompareLink.click();
    }

    public void clickOnAddToCompareInFooter(){
        addToCompareFooter.click();
    }

    public void clickOnClearBtn(){
        clearButton.click();
    }

    public String getText(){
        return grabMsg.getText();
    }

    public void waitForClearButtonClickable() {
        wait = new WebDriverWait(driver, 40);
        wait.until(ExpectedConditions.elementToBeClickable(clearButton));
    }

}
