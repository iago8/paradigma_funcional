module CoreLuta( listarLutadores) where

--definição de lista
type Vida1 = Int
type Atq1 = Int
type Def1 = Int
type Vida2 = Int
type Atq2 = Int
type Def2 = Int
type Lutador1 = (Vida1, Atq1, Def1)
type Lutador2 = (Vida2, Atq2, Def2)


--print dos lutadores
listarLutadores = [(vida,atq,def)| vida <-[1..10],atq <-[1..10],def <-[1..10],vida>atq+def,vida+atq+def<16,atq>def]


--recursão
calculo :: (Int, Int, Int) -> (Int, Int, Int) -> (Int, Int, Int)
calculo ()() = ()
calculo (h,t,p) (z,x,c)| (h<=0) = (z,x,c)
		       | (z<=0) = (h,t,f)
                       | otherwise = calculo(rodada (z,x,c) (h,t,p))

--matematica
--fst=head snd=tail
rodada :: (Int, Int, Int) -> (Int, Int, Int) -> (Int, Int, Int)



--operacao
--v=a-d
operacao :: Int -> Int -> Int
vida1 = atq2 - def1

