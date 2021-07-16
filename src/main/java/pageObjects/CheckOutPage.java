package pageObjects;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.Select;
import org.openqa.selenium.support.ui.WebDriverWait;

public class CheckOutPage {
    WebDriver driver;
    WebDriverWait wait;

    @FindBy(id = "BillingNewAddress_FirstName")
    public WebElement firstName;

    @FindBy(id = "BillingNewAddress_LastName")
    public WebElement lastName;

    @FindBy(id = "BillingNewAddress_Email")
    public WebElement email;

    @FindBy(css = "select#BillingNewAddress_CountryId")
    public WebElement countryName;

    @FindBy(css = "select#BillingNewAddress_StateProvinceId")
    public WebElement stateName;

    @FindBy(id = "BillingNewAddress_City")
    public WebElement cityName;

    @FindBy(id = "BillingNewAddress_Address1")
    public WebElement address1;

    @FindBy(id = "BillingNewAddress_ZipPostalCode")
    public WebElement zipCode;

    @FindBy(id = "BillingNewAddress_PhoneNumber")
    public WebElement phoneNumber;

    @FindBy(css = "button.new-address-next-step-button")
    public WebElement ContinueButton;

    @FindBy(css = "button.remove-btn")
    public WebElement removeButton;

    @FindBy(className = "no-data")
    public WebElement getRemovedMsg;

    @FindBy(className = "qty-input")
    public WebElement qtyBox;

    @FindBy(css = "button.new-address-next-step-button")
    public WebElement continueAddBilling;

    @FindBy(css = "button.payment-method-next-step-button")
    public WebElement continuePayment;

    @FindBy(css = "button.payment-info-next-step-button")
    public WebElement continuePaymentInfo;

    @FindBy(css = "button.confirm-order-next-step-button")
    public WebElement continueConfirm;

    @FindBy(xpath = "//*[contains(text(),'Your order')]")
    public WebElement getSuccessfullyMsg;

    @FindBy(xpath = "button.order-completed-continue-button")
    public WebElement continueThankYou;



    public CheckOutPage(WebDriver driver){
        this.driver=driver;
        PageFactory.initElements(driver, this);
    }

    public void enterFirstName(String fn){
        firstName.sendKeys(fn);
    }
    public void enterLastName(String ln){
        lastName.sendKeys(ln);
    }
    public void enterEmail(String em){
        email.sendKeys(em);
    }

    public void enterCity(String city){
        cityName.sendKeys(city);
    }
    public void enterAddress(String address){
        address1.sendKeys(address);
    }
    public void enterZipCode(String zip){
        zipCode.sendKeys(zip);
    }
    public void enterPhoneNumber(String pn){
        phoneNumber.sendKeys(pn);
    }
    public void clickOnContinue(){
        ContinueButton.click();
    }

    public void waitForContinueButtonClickable() {
        wait = new WebDriverWait(driver, 60);
        wait.until(ExpectedConditions.elementToBeClickable(ContinueButton));
    }
    public void selectCountry(String country)
    {
        Select select = new Select(countryName);
        select.selectByIndex(3);
    }
    /*public void selectState(String state)
    {
        Select select = new Select(stateName);
        select.selectByIndex(0);
    }*/


    public void clickOnRemoveBtn(){
        removeButton.click();
    }

    public String getRemoveText(){
        return getRemovedMsg.getText();
    }
    public void changeQty(String one){
        qtyBox.sendKeys(one);
    }

    public void clickOnContinueAdd(){
        continueAddBilling.click();
    }
    public void clickOnContinuePayment(){
       continuePayment.click();
    }
    public void clickOnContinuePaymentInfo(){
        continuePaymentInfo.click();
    }
    public void clickOnConfirm(){
        continueConfirm.click();
    }

    public String getTextOfSuccess(){
        return getSuccessfullyMsg.getText();
    }

    public void clickOnContinueThank(){
        continueThankYou.click();
    }


}
