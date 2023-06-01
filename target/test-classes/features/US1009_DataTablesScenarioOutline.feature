Feature: US1009 Datatables sitesine 5 farkli giris yapalim

  Scenario Outline: TC14 kullanici 5 farkli kayit girisi yapabilmeli

    When kullanici "dataTablesUrl" anasayfasinda
    Then new butonuna basar
    And isim bolumune "<firstname>" yazar
    And soyisim bolumune "<lastname>" yazar
    And position bolumune "<position>" yazar
    And office bolumune "<office>" yazar
    And extension bolumune "<extension>" yazar
    And tarih bolumune "<startDate>" yazar
    And maas bolumune "<salary>" yazar
    And Create tusuna basar
    When kullanici "<firstname>" ile arama yapar
    Then isim bolumunde "<firstname>" oldugunu test eder

    Examples:
      |firstname|lastname|position|office   |extension|startDate  |salary|
      |Alim     |Alim    |qa      |ankara   |UI       |2021-10-11 |10000 |
      |Berk     |Can     |tester  |ankara   |api      |2022-05-05 |11000 |
      |Huseyin  |Kacmaz  |BA      |berlin   |-        |2022-07-10 |40000 |
      |Fatih    |Sahin   |PO      |berlin   |-        |2022-03-12 |45000 |
      |Ahmet    |Kaya    |Tester  |ankara   |database |2022-06-06 |11000 |
