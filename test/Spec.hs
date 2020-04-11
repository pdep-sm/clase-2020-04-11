import PdePreludat
import Library
import Test.Hspec

main :: IO ()
main = hspec $ do
  describe "Ejercicio 1.11 - Pinos" $ do
    it "Pino de 2 metros pesa 600 kg" $ do
      pesoPino 200 `shouldBe` 600
    it "Pino de 5 metros pesa 1300 kg" $ do
      pesoPino 500 `shouldBe` 1300
    it "Sirve un pino de 400 kg" $ do
      esPesoUtil 400 `shouldBe` True
    it "Sirve un pino de 1000 kg" $ do
      esPesoUtil 1000 `shouldBe` True
    it "No sirve un pino de 399 kg" $ do
      esPesoUtil 399 `shouldBe` False
    it "No sirve un pino de 1001 kg" $ do
      esPesoUtil 1001 `shouldBe` False
    it "Sirve pino de 134 cm" $ do
      sirvePino 134 `shouldBe` True
    it "No sirve pino de 133 cm" $ do
      sirvePino 133 `shouldBe` False
    it "Sirve pino de 350 cm" $ do
      sirvePino 350 `shouldBe` True
    it "No sirve pino de 351 cm" $ do
      sirvePino 351 `shouldBe` False
