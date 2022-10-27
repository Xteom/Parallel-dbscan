::puntos
SET /A p = %1

::threads o hilos totales disponibles
SET /A n = %2

SET /A n_medios = %n_medios%
SET /A n_dobles = %n_dobles%

:: header
:: echo "datos,modo,hilos,tiempo" >> .\dbscan_noise_res.csv

:: serial
.\Parallel-dbscan\serial_noise.exe %p% >> .\Parallel-dbscan\dbscan_noise_res2.csv

:: parallel puntos 
.\Parallel-dbscan\dbscan_parallel.exe %p% 1 >> .\Parallel-dbscan\dbscan_noise_res2.csv
.\Parallel-dbscan\dbscan_parallel.exe %p% %n_medios% >> .\Parallel-dbscan\dbscan_noise_res2.csv
.\Parallel-dbscan\dbscan_parallel.exe %p% %n% >> .\Parallel-dbscan\dbscan_noise_res2.csv
.\Parallel-dbscan\dbscan_parallel.exe %p% %n_dobles% >> .\Parallel-dbscan\dbscan_noise_res2.csv
