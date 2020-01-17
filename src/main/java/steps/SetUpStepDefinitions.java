package steps;

import cucumber.api.java.en.Given;

import java.sql.SQLException;

import static helpers.Request.setRequestNumbersToProperties;

public class SetUpStepDefinitions {


    @Given("^set up request numbers from database$")
    public void setUpRequestNumbersFromDatabase() throws SQLException {
        setRequestNumbersToProperties();
    }
}
