import Prelude

-- Parte 1 Inicialización y Visualización de la Matriz

printMatrix :: (Show a) => [a] -> IO()
printMatrix =  mapM_ print

initMatrix :: Int -> Int -> (Int, Int) -> [[ Int ]]
-- initMatrix n g (x, y) = replicate n (replicate n 0)
-- Lista comprensión de tamaño nxn donde la posicion (x,y) = g
initMatrix n g (x, y)
    | n <= 0 || g < 0 || x < 0 || y < 0 || x > n || y > n =  error "Datos invalidos"
    | otherwise = [[if i == x + 1 && j == y + 1 then g else 0 | j <- [1..n] ] | i <- [1..n]]

-- Parte 2 Lógica del colapso
-- Idea matriz auxiliar de 0 que sume uno donde toca por cada celda que colapse, a esta se le restan 4 y al final se le suma la matruz auxiliar

-- collapseStep :: [[ Int ]] -> [[ Int ]]
-- collapseStep a =  

main :: IO ()
main = do
   printMatrix( initMatrix 5 5 (2,2) )
