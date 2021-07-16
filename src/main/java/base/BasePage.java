package base;

import pageObjects.*;

import utils.DriverFactory1;
import utils.DriverUtils;

public class BasePage {
    public static HomePage homePage;
    public static RegisterPage registerPage;
    public static LoginPage loginPage;
    public static BooksPage booksPage;
    public static DigitalDownloadsPage digitalDownloadsPage;
    public static CheckOutPage checkOutPage;
    public static AddToCompare addToCompare;
    public static DriverUtils driverUtils;
    public static EmailAFriend emailAFriend;
    public static PridePage pridePage;
    public static FirstPrizePies firstPrizePies;
    public static FahrenheitPage fahrenheitPage;


    public static void initPages() {
        homePage = new HomePage(DriverFactory1.driver);
        registerPage = new RegisterPage(DriverFactory1.driver);
        loginPage = new LoginPage(DriverFactory1.driver);
        booksPage =new BooksPage(DriverFactory1.driver);
        digitalDownloadsPage =new DigitalDownloadsPage(DriverFactory1.driver);
        addToCompare =new AddToCompare(DriverFactory1.driver);
        checkOutPage = new CheckOutPage(DriverFactory1.driver);
       emailAFriend =new EmailAFriend(DriverFactory1.driver);
       pridePage =new PridePage(DriverFactory1.driver);
       firstPrizePies =new FirstPrizePies(DriverFactory1.driver);
       fahrenheitPage = new FahrenheitPage(DriverFactory1.driver);
        driverUtils = new DriverUtils();

    }
}
