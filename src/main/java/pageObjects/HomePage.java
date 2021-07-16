package pageObjects;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

public class HomePage {
    WebDriver driver;
    WebDriverWait wait;

    //web elements
    @FindBy(linkText = "Register")
    public WebElement registerLink;

    @FindBy(linkText = "Log in")
    public WebElement loginLink;


    @FindBy(className = "ico-wishlist")
    public WebElement wishListLink;

    @FindBy(className = "ico-cart")
    public WebElement shoppingCartLink;


    @FindBy(id = "small-searchterms")
    public WebElement searchTextBox;

    @FindBy(css = "button.search-box-button")
    public WebElement searchButton;

    @FindBy(linkText = "Log out")
    public WebElement logoutLink;


    public HomePage(WebDriver driver)
    {
        this.driver=driver;
        PageFactory.initElements(driver,this);
    }

    //actions
    public void clickRegisterLink()
    {
        registerLink.click();
    }

    public void clickLoginLink()
    {
        loginLink.click();
    }

    public void clickWishlistLink()
    {
        wishListLink.click();
    }


    public void clickShoppingCartLink()
    {
        shoppingCartLink.click();
    }

    public void enterSearchText(String searchText)
    {
        searchTextBox.sendKeys(searchText);
    }

    public void clickSearchButton()
    {
        searchButton.click();
    }

    public void pageRefresh()
    {
        driver.navigate().refresh();
    }

    public void clickLogoutLink()
    {
        logoutLink.click();
    }

    public void waitForLoginClickable()
    {
        wait = new WebDriverWait(driver,30);
        wait.until(ExpectedConditions.elementToBeClickable(loginLink));
    }


    public void waitForLogoutClickable()
    {
        wait = new WebDriverWait(driver,30);
        wait.until(ExpectedConditions.elementToBeClickable(logoutLink));
    }

    public void navigateToUrl(String url)
    {
        driver.navigate().to(url);
    }


}
