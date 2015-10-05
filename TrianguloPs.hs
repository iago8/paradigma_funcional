module TrianguloPs (triangulo) where

--test
triangulo = [(a,b,c)| a <-[1..10],b <-[1..10],c <-[1..10],a>b+c,a+b+c<15,b>c]