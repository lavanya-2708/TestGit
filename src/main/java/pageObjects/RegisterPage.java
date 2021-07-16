package pageObjects;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;
import org.openqa.selenium.support.ui.Select;

public class RegisterPage {
    WebDriver driver;

    @FindBy(id="gender-male")
    public WebElement maleRadioButton;


    @FindBy(id="gender-female")
    public WebElement femaleRadioButton;


    @FindBy(id="FirstName")
    public WebElement firstNameTextBox;


    @FindBy(id="LastName")
    public WebElement lastNameTextBox;

    @FindBy(id="Email")
    public WebElement emailTextBox;


    @FindBy(id="Password")
    public WebElement passwordTextBox;

    @FindBy(id="ConfirmPassword")
    public WebElement confPasswordTextBox;

    @FindBy(id="register-button")
    public WebElement registerButton;


    @FindBy(name = "DateOfBirthDay")
    public WebElement dayDropdown;


    @FindBy(css = "div.result")
    public WebElement confText;


    public RegisterPage(WebDriver driver)
    {
        this.driver=driver;
        PageFactory.initElements(driver,this);
    }


    public void clickMaleRadioButton()
    {
        maleRadioButton.click();
    }

    public void clickFeMaleRadioButton()
    {
        femaleRadioButton.click();
    }

    public void enterFirstName(String fn)
    {
        firstNameTextBox.sendKeys(fn);
    }

    public void enterLastName(String ln)
    {
        lastNameTextBox.sendKeys(ln);
    }

    public void enterEmail(String em)
    {
        emailTextBox.sendKeys(em);
    }

    public void enterPassword(String pw)
    {
        passwordTextBox.sendKeys(pw);
    }

    public void enterConfPassword(String cp)
    {
        confPasswordTextBox.sendKeys(cp);
    }

    public void clickRegisterButton()
    {
        registerButton.click();
    }

    public String verifyConfMessage()
    {
        return confText.getText();
    }


    public void selectDate(String date)
    {
        Select select = new Select(dayDropdown);
        select.selectByVisibleText(date);
    }


    public String getPageTitle()
    {
        return driver.getTitle();
    }


}
