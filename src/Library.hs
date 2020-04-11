module Library where
import PdePreludat

pesoPino :: Number -> Number
pesoPino altura
    | altura <= 300 = altura * 3
    | otherwise     = pesoPino 300 + (altura - 300) * 2

esPesoUtil :: Number -> Bool
{-
esPesoUtil peso
    | peso < 400 = False
    | peso > 1000 = False
    | otherwise = True
-}
esPesoUtil peso = peso >= 400 && peso <= 1000

sirvePino :: Number -> Bool
-- sirvePino altura = esPesoUtil (pesoPino altura)
sirvePino = esPesoUtil . pesoPino