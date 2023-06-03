Feature: US1013 kullanici excel bilgilerine ulasir

  Scenario: TC18 kullanici excel bilgilerini kullanir

    Given kullanici excel dosyasini kullanilabilir hale getirir
    Then 1.satirdaki 2.hücreyi yazdirir
    And baskenti Jakarta olan ulkenin ismini yazdirir
    And ulke sayisinin 190 oldugunu test eder
    And fiziki olarak kullanilan satir sayisinin 191 oldugunu test eder
