::exe puntos hilos
::puntos 20000, 40000, 80000, 120000, 140000, 160000, 180000, 200000
::hilos 1, tot/2, tot, 2tot

:: %1 y n son el numero de hilos totales disponibles
SET /A n = %1

SET /A n_medios = %n% / 2
SET /A n_dobles = %n% * 2

::serial 
.\dbscan_serial_noise.exe 20000 >> .\dbscan_noise_res.csv
echo "parallel"
.\dbscan_parallel_noise.exe 20000 %n% >> .\dbscan_noise_res.csv