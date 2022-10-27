::puntos
SET /A p = %1

::threads o hilos totales disponibles
SET /A n = %2

SET /A n_medios = %n% / 2
SET /A n_dobles = %n% * 2

:: header
:: echo "datos,modo,hilos,tiempo" >> .\dbscan_noise_res.csv

:: serial
.\dbscan_serial_noise.exe %p% >> .\dbscan_noise_res_p.csv

:: parallel puntos 
.\dbscan_parallel_noise.exe %p% 1 >> .\dbscan_noise_res_p.csv
.\dbscan_parallel_noise.exe %p% %n_medios% >> .\dbscan_noise_res_p.csv
.\dbscan_parallel_noise.exe %p% %n% >> .\dbscan_noise_res_p.csv
.\dbscan_parallel_noise.exe %p% %n_dobles% >> .\dbscan_noise_res_p.csv
