Feature: US1010 herokuapp Delete testi
  @heroku @sirali
  Scenario: TC15 herokuapp'ten delete butonu calismali
    Given kullanici "herokuappUrl" anasayfasinda
    And add element butonuna basar
    Then delete butonu gorunur oluncaya kadar bekler
    And delete butonunun gorunur oldugunu test eder
    Then delete butonuna basar
    And sayfayi kapatir
