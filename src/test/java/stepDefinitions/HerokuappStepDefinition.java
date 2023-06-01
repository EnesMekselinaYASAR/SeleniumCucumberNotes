package stepDefinitions;

import io.cucumber.java.en.And;
import io.cucumber.java.en.Then;
import pages.HerokuappPage;

public class HerokuappStepDefinition {
    HerokuappPage herokuappPage=new HerokuappPage();

    @And("add element butonuna basar")
    public void addElementButonunaBasar() {
        herokuappPage.addElementButton.click();
    }

    @Then("delete butonu gorunur oluncaya kadar bekler")
    public void deleteButonuGorunurOluncayaKadarBekler() {

    }

    @And("delete butonunun gorunur oldugunu test eder")
    public void deleteButonununGorunurOldugunuTestEder() {
    }

    @Then("delete butonuna basar")
    public void deleteButonunaBasar() {
    }
}
