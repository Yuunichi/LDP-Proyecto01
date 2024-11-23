import Prelude

-- Parte 1 Inicialización y Visualización de la Matriz

printMatrix :: (Show a) => [a] -> IO()
printMatrix =  mapM_ print

initMatrix :: Int -> Int -> (Int, Int) -> [[ Int ]]
-- initMatrix n g (x, y) = replicate n (replicate n 0)
-- Lista comprensión de tamaño nxn donde la posicion (x,y) = g
initMatrix n g (x, y) = [ [if i == x + 1 && j == y + 1 then g else 0 | j <- [1..n] ] | i <- [1..n] ]

-- Parte 2 Lógica del colapso

main :: IO ()
main = do
   printMatrix( initMatrix 3 20 (1, 1) )
