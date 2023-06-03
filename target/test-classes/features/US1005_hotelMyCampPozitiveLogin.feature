Feature: US1005 dogru kullanici adi ve sifre ile giris yapabilmeli
  @hmc @pr2
  Scenario: TC08 positive login test
    Given kullanici "hmcUrl" anasayfasinda
    Then gizli baglanti uyarisi verirse gelismise ve ilerleye tiklar
    Then Log in  yazisina tiklar
    And gecerli username girer
    And gecerli password girer
    And Login butonuna basar
    Then sayfaya giris yaptigini kontrol ederAnd sayfayi kapatir