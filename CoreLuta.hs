module CoreLuta(Jogador, calculo, rodada) where

type Jogadores = [Jogador]
type Vida = Int
type Ataque = Int
type Defesa = Int
data Jogador = Jogador Vida Ataque Defesa deriving (Show, Read)
	 
--recursão
calculo :: Jogadores -> Jogador
calculo [(Jogador h t p), (Jogador z x c)] 
					| h <= 1 = Jogador z x c
					| z <= 1 = Jogador h t p
					| otherwise = calculo(rodada (Jogador h t p) (Jogador z x c))

--matematica
rodada :: Jogador -> Jogador -> Jogadores
rodada (Jogador vid atq def) (Jogador vida ataque defesa)
							| atq > ataque = [(Jogador vid atq def), (Jogador vidamenor ataque defesa)]
							| otherwise = [(Jogador vida ataque defesa), (Jogador vidmenor atq def)]
							where vidamenor = vida - 1
							      vidmenor = vid - 1
