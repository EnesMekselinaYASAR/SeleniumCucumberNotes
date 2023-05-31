@tumu
Feature: US1001 Kullanici Amazon Sayfasinda Arama Yapar

  @nutella
  Scenario: TC01 kullanici amazonda Nutella aratir

    Given kullanici amazon anasayfasinda
    Then kullanici Nutella icin arama yapar
    And sonuclarin Nutella icerdigini test eder
    And sayfayi kapatir

  @java
  Scenario: TC02 kullanici amazonda Java aratir
    Given kullanici amazon anasayfasinda
    Then kullanici Java icin arama yapar
    And sonuclarin Java icerdigini test eder
    And sayfayi kapatir

  @xiaomi
  Scenario: TC03 kullanici amazonda xiaomi aratir
    Given kullanici amazon anasayfasinda
    Then kullanici xiaomi icin arama yapar
    And sonuclarin xiaomi icerdigini test eder
    And sayfayi kapatir