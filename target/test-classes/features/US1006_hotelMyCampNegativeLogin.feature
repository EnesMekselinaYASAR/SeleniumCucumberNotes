# hotel my camp sitesinde 3 adet negative test senaryosu olusturalim
# 1- dogru username-yanlis password
# 2- yanlis username-dogru password
# 3- yanlis username-yanlis password

Feature: US1006 yanlis bilgilerle siteye giris yapilamaz

  Scenario: TC09 yanlis password ile giris yapilamaz

    Given kullanici "hmcUrl" anasayfasinda
    Then gizli baglanti uyarisi verirse gelismise ve ilerleye tiklar
    Then Log in  yazisina tiklar
    And gecerli username girer
    And gecersiz password girer
    And Login butonuna basar
    Then sayfaya giris yapilamadigini kontrol eder
    And sayfayi kapatir


  Scenario: TC11 yanlis kullanici adi ve yanlis sifre ile giris yapilamaz

    Given kullanici "hmcUrl" anasayfasinda
    Then gizli baglanti uyarisi verirse gelismise ve ilerleye tiklar
    Then Log in  yazisina tiklar
    And gecersiz username girer
    And gecersiz password girer
    And Login butonuna basar
    Then sayfaya giris yapilamadigini kontrol eder
    And sayfayi kapatir
