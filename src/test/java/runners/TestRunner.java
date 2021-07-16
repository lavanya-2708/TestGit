package runners;

import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;
import org.junit.runner.RunWith;

@RunWith(Cucumber.class)
@CucumberOptions(
        features = {"src/test/resources/features/register.feature"},
        glue = {"steps"} ,  //location of step definitions
        plugin = {"pretty","html:target/report.html"},
       // tags="@ui" ,//single tag
        //tags = " @ui or @regression",//
         //tags = "@register and @digital",
        // tags= "~@ui"   //ignore
        // tags = "@ui or ~@regression"
        monochrome = true//output looks cleaner in console
        // dryRun = true,//whether matching step definition are there

)
public class TestRunner {
}
