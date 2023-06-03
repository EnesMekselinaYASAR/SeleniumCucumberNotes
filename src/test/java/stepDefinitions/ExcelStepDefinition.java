package stepDefinitions;

import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.ss.usermodel.WorkbookFactory;
import org.junit.Assert;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;


public class ExcelStepDefinition {
    Workbook workbook;

    @Given("kullanici excel dosyasini kullanilabilir hale getirir")
    public void kullaniciExcelDosyasiniKullanilabilirHaleGetirir() throws IOException {
        String dosyaYolu = "src/test/resources/ulkelercucumber.xlsx";
        FileInputStream fis = new FileInputStream(dosyaYolu);
        workbook = WorkbookFactory.create(fis);
    }

    @Then("{int}.satirdaki {int}.hücreyi yazdirir")
    public void satirdakiHücreyiYazdirir(int satir, int sutun) {
        String istenenHucraYazisi=workbook
                                        .getSheet("Sayfa1")
                                        .getRow(satir-1)
                                        .getCell(sutun-1).toString();
        System.out.println(satir+" .satir"+sutun+" .sutundaki deger: "+ istenenHucraYazisi);
    }

    @And("baskenti Jakarta olan ulkenin ismini yazdirir")
    public void baskentiJakartaOlanUlkeninIsminiYazdirir() {
        /*
        for loop ile tüm satırları kontrol etmem gerekiyor
        bunun için de satir sayısıına ihtiyacım var
        */

        int satirSayisi=workbook.getSheet("Sayfa1").getLastRowNum();
        for (int i = 0; i <= satirSayisi ; i++) {
            if (workbook.getSheet("Sayfa1").getRow(i).getCell(1).toString().equals("Jakarta")){
                System.out.println("Baskenti Jakarta olan Ulke: "+ workbook.getSheet("Sayfa1").getRow(i).getCell(0));
            }
        }

    }

    @And("ulke sayisinin {int} oldugunu test eder")
    public void ulkeSayisininOldugunuTestEder(int ulkeSayisi) {
        int actualUlkeSayisi=workbook.getSheet("Sayfa1").getLastRowNum();
        Assert.assertTrue(ulkeSayisi==actualUlkeSayisi);
    }

    @And("fiziki olarak kullanilan satir sayisinin {int} oldugunu test eder")
    public void fizikiOlarakKullanilanSatirSayisininOldugunuTestEder(int fizikiKullanilanSatir) {
        int actualFizKulSatir=workbook.getSheet("Sayfa1").getPhysicalNumberOfRows();
        Assert.assertTrue(fizikiKullanilanSatir==actualFizKulSatir);
    }

}
