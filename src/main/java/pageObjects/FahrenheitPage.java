package pageObjects;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;
import org.openqa.selenium.support.ui.WebDriverWait;

public class FahrenheitPage {
    WebDriver driver;
    WebDriverWait wait;

    @FindBy(linkText = "Fahrenheit 451 by Ray Bradbury")
    public WebElement fahrenheitLink;

    public FahrenheitPage(WebDriver driver){
        this.driver=driver;
        PageFactory.initElements(driver,this);
    }

    public void ClickOnFahrenheit() {
        fahrenheitLink.click();
    }
}
