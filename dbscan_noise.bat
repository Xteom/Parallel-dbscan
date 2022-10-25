::exe puntos hilos
::puntos 20000, 40000, 80000, 120000, 140000, 160000, 180000, 200000
::hilos 1, tot/2, tot, 2tot

:: %1 y n son el numero de hilos totales disponibles
SET /A n = %1

SET /A n_medios = %n% / 2
SET /A n_dobles = %n% * 2

::serial 
.\dbscan_serial_noise.exe 20000 >> .\dbscan_noise_res.csv
.\dbscan_serial_noise.exe 40000 >> .\dbscan_noise_res.csv
.\dbscan_serial_noise.exe 80000 >> .\dbscan_noise_res.csv
.\dbscan_serial_noise.exe 120000 >> .\dbscan_noise_res.csv
.\dbscan_serial_noise.exe 140000 >> .\dbscan_noise_res.csv
.\dbscan_serial_noise.exe 160000 >> .\dbscan_noise_res.csv
.\dbscan_serial_noise.exe 180000 >> .\dbscan_noise_res.csv
.\dbscan_serial_noise.exe 200000 >> .\dbscan_noise_res.csv

::serial 2
.\dbscan_serial_noise.exe 20000 >> .\dbscan_noise_res.csv
.\dbscan_serial_noise.exe 40000 >> .\dbscan_noise_res.csv
.\dbscan_serial_noise.exe 80000 >> .\dbscan_noise_res.csv
.\dbscan_serial_noise.exe 120000 >> .\dbscan_noise_res.csv
.\dbscan_serial_noise.exe 140000 >> .\dbscan_noise_res.csv
.\dbscan_serial_noise.exe 160000 >> .\dbscan_noise_res.csv
.\dbscan_serial_noise.exe 180000 >> .\dbscan_noise_res.csv
.\dbscan_serial_noise.exe 200000 >> .\dbscan_noise_res.csv

::serial 3
.\dbscan_serial_noise.exe 20000 >> .\dbscan_noise_res.csv
.\dbscan_serial_noise.exe 40000 >> .\dbscan_noise_res.csv
.\dbscan_serial_noise.exe 80000 >> .\dbscan_noise_res.csv
.\dbscan_serial_noise.exe 120000 >> .\dbscan_noise_res.csv
.\dbscan_serial_noise.exe 140000 >> .\dbscan_noise_res.csv
.\dbscan_serial_noise.exe 160000 >> .\dbscan_noise_res.csv
.\dbscan_serial_noise.exe 180000 >> .\dbscan_noise_res.csv
.\dbscan_serial_noise.exe 200000 >> .\dbscan_noise_res.csv

::parallel_externo
.\dbscan_parallel_e_noise.exe 20000 1 >> .\dbscan_noise_res.csv
.\dbscan_parallel_e_noise.exe 20000 %n_medios% >> .\dbscan_noise_res.csv
.\dbscan_parallel_e_noise.exe 20000 %n% >> .\dbscan_noise_res.csv
.\dbscan_parallel_e_noise.exe 20000 %n_dobles% >> .\dbscan_noise_res.csv

.\dbscan_parallel_e_noise.exe 40000 1 >> .\dbscan_noise_res.csv
.\dbscan_parallel_e_noise.exe 40000 %n_medios% >> .\dbscan_noise_res.csv
.\dbscan_parallel_e_noise.exe 40000 %n% >> .\dbscan_noise_res.csv
.\dbscan_parallel_e_noise.exe 40000 %n_dobles% >> .\dbscan_noise_res.csv

.\dbscan_parallel_e_noise.exe 80000 1 >> .\dbscan_noise_res.csv
.\dbscan_parallel_e_noise.exe 80000 %n_medios% >> .\dbscan_noise_res.csv
.\dbscan_parallel_e_noise.exe 80000 %n% >> .\dbscan_noise_res.csv
.\dbscan_parallel_e_noise.exe 80000 %n_dobles% >> .\dbscan_noise_res.csv

.\dbscan_parallel_e_noise.exe 120000 1 >> .\dbscan_noise_res.csv
.\dbscan_parallel_e_noise.exe 120000 %n_medios% >> .\dbscan_noise_res.csv
.\dbscan_parallel_e_noise.exe 120000 %n% >> .\dbscan_noise_res.csv
.\dbscan_parallel_e_noise.exe 120000 %n_dobles% >> .\dbscan_noise_res.csv

.\dbscan_parallel_e_noise.exe 140000 1 >> .\dbscan_noise_res.csv
.\dbscan_parallel_e_noise.exe 140000 %n_medios% >> .\dbscan_noise_res.csv
.\dbscan_parallel_e_noise.exe 140000 %n% >> .\dbscan_noise_res.csv
.\dbscan_parallel_e_noise.exe 140000 %n_dobles% >> .\dbscan_noise_res.csv

.\dbscan_parallel_e_noise.exe 160000 1 >> .\dbscan_noise_res.csv
.\dbscan_parallel_e_noise.exe 160000 %n_medios% >> .\dbscan_noise_res.csv
.\dbscan_parallel_e_noise.exe 160000 %n% >> .\dbscan_noise_res.csv
.\dbscan_parallel_e_noise.exe 160000 %n_dobles% >> .\dbscan_noise_res.csv

.\dbscan_parallel_e_noise.exe 180000 1 >> .\dbscan_noise_res.csv
.\dbscan_parallel_e_noise.exe 180000 %n_medios% >> .\dbscan_noise_res.csv
.\dbscan_parallel_e_noise.exe 180000 %n% >> .\dbscan_noise_res.csv
.\dbscan_parallel_e_noise.exe 180000 %n_dobles% >> .\dbscan_noise_res.csv

.\dbscan_parallel_e_noise.exe 200000 1 >> .\dbscan_noise_res.csv
.\dbscan_parallel_e_noise.exe 200000 %n_medios% >> .\dbscan_noise_res.csv
.\dbscan_parallel_e_noise.exe 200000 %n% >> .\dbscan_noise_res.csv
.\dbscan_parallel_e_noise.exe 200000 %n_dobles% >> .\dbscan_noise_res.csv

::parallel_externo 2
.\dbscan_parallel_e_noise.exe 20000 1 >> .\dbscan_noise_res.csv
.\dbscan_parallel_e_noise.exe 20000 %n_medios% >> .\dbscan_noise_res.csv
.\dbscan_parallel_e_noise.exe 20000 %n% >> .\dbscan_noise_res.csv
.\dbscan_parallel_e_noise.exe 20000 %n_dobles% >> .\dbscan_noise_res.csv

.\dbscan_parallel_e_noise.exe 40000 1 >> .\dbscan_noise_res.csv
.\dbscan_parallel_e_noise.exe 40000 %n_medios% >> .\dbscan_noise_res.csv
.\dbscan_parallel_e_noise.exe 40000 %n% >> .\dbscan_noise_res.csv
.\dbscan_parallel_e_noise.exe 40000 %n_dobles% >> .\dbscan_noise_res.csv

.\dbscan_parallel_e_noise.exe 80000 1 >> .\dbscan_noise_res.csv
.\dbscan_parallel_e_noise.exe 80000 %n_medios% >> .\dbscan_noise_res.csv
.\dbscan_parallel_e_noise.exe 80000 %n% >> .\dbscan_noise_res.csv
.\dbscan_parallel_e_noise.exe 80000 %n_dobles% >> .\dbscan_noise_res.csv

.\dbscan_parallel_e_noise.exe 120000 1 >> .\dbscan_noise_res.csv
.\dbscan_parallel_e_noise.exe 120000 %n_medios% >> .\dbscan_noise_res.csv
.\dbscan_parallel_e_noise.exe 120000 %n% >> .\dbscan_noise_res.csv
.\dbscan_parallel_e_noise.exe 120000 %n_dobles% >> .\dbscan_noise_res.csv

.\dbscan_parallel_e_noise.exe 140000 1 >> .\dbscan_noise_res.csv
.\dbscan_parallel_e_noise.exe 140000 %n_medios% >> .\dbscan_noise_res.csv
.\dbscan_parallel_e_noise.exe 140000 %n% >> .\dbscan_noise_res.csv
.\dbscan_parallel_e_noise.exe 140000 %n_dobles% >> .\dbscan_noise_res.csv

.\dbscan_parallel_e_noise.exe 160000 1 >> .\dbscan_noise_res.csv
.\dbscan_parallel_e_noise.exe 160000 %n_medios% >> .\dbscan_noise_res.csv
.\dbscan_parallel_e_noise.exe 160000 %n% >> .\dbscan_noise_res.csv
.\dbscan_parallel_e_noise.exe 160000 %n_dobles% >> .\dbscan_noise_res.csv

.\dbscan_parallel_e_noise.exe 180000 1 >> .\dbscan_noise_res.csv
.\dbscan_parallel_e_noise.exe 180000 %n_medios% >> .\dbscan_noise_res.csv
.\dbscan_parallel_e_noise.exe 180000 %n% >> .\dbscan_noise_res.csv
.\dbscan_parallel_e_noise.exe 180000 %n_dobles% >> .\dbscan_noise_res.csv

.\dbscan_parallel_e_noise.exe 200000 1 >> .\dbscan_noise_res.csv
.\dbscan_parallel_e_noise.exe 200000 %n_medios% >> .\dbscan_noise_res.csv
.\dbscan_parallel_e_noise.exe 200000 %n% >> .\dbscan_noise_res.csv
.\dbscan_parallel_e_noise.exe 200000 %n_dobles% >> .\dbscan_noise_res.csv

::parallel_externo 3
.\dbscan_parallel_e_noise.exe 20000 1 >> .\dbscan_noise_res.csv
.\dbscan_parallel_e_noise.exe 20000 %n_medios% >> .\dbscan_noise_res.csv
.\dbscan_parallel_e_noise.exe 20000 %n% >> .\dbscan_noise_res.csv
.\dbscan_parallel_e_noise.exe 20000 %n_dobles% >> .\dbscan_noise_res.csv

.\dbscan_parallel_e_noise.exe 40000 1 >> .\dbscan_noise_res.csv
.\dbscan_parallel_e_noise.exe 40000 %n_medios% >> .\dbscan_noise_res.csv
.\dbscan_parallel_e_noise.exe 40000 %n% >> .\dbscan_noise_res.csv
.\dbscan_parallel_e_noise.exe 40000 %n_dobles% >> .\dbscan_noise_res.csv

.\dbscan_parallel_e_noise.exe 80000 1 >> .\dbscan_noise_res.csv
.\dbscan_parallel_e_noise.exe 80000 %n_medios% >> .\dbscan_noise_res.csv
.\dbscan_parallel_e_noise.exe 80000 %n% >> .\dbscan_noise_res.csv
.\dbscan_parallel_e_noise.exe 80000 %n_dobles% >> .\dbscan_noise_res.csv

.\dbscan_parallel_e_noise.exe 120000 1 >> .\dbscan_noise_res.csv
.\dbscan_parallel_e_noise.exe 120000 %n_medios% >> .\dbscan_noise_res.csv
.\dbscan_parallel_e_noise.exe 120000 %n% >> .\dbscan_noise_res.csv
.\dbscan_parallel_e_noise.exe 120000 %n_dobles% >> .\dbscan_noise_res.csv

.\dbscan_parallel_e_noise.exe 140000 1 >> .\dbscan_noise_res.csv
.\dbscan_parallel_e_noise.exe 140000 %n_medios% >> .\dbscan_noise_res.csv
.\dbscan_parallel_e_noise.exe 140000 %n% >> .\dbscan_noise_res.csv
.\dbscan_parallel_e_noise.exe 140000 %n_dobles% >> .\dbscan_noise_res.csv

.\dbscan_parallel_e_noise.exe 160000 1 >> .\dbscan_noise_res.csv
.\dbscan_parallel_e_noise.exe 160000 %n_medios% >> .\dbscan_noise_res.csv
.\dbscan_parallel_e_noise.exe 160000 %n% >> .\dbscan_noise_res.csv
.\dbscan_parallel_e_noise.exe 160000 %n_dobles% >> .\dbscan_noise_res.csv

.\dbscan_parallel_e_noise.exe 180000 1 >> .\dbscan_noise_res.csv
.\dbscan_parallel_e_noise.exe 180000 %n_medios% >> .\dbscan_noise_res.csv
.\dbscan_parallel_e_noise.exe 180000 %n% >> .\dbscan_noise_res.csv
.\dbscan_parallel_e_noise.exe 180000 %n_dobles% >> .\dbscan_noise_res.csv

.\dbscan_parallel_e_noise.exe 200000 1 >> .\dbscan_noise_res.csv
.\dbscan_parallel_e_noise.exe 200000 %n_medios% >> .\dbscan_noise_res.csv
.\dbscan_parallel_e_noise.exe 200000 %n% >> .\dbscan_noise_res.csv
.\dbscan_parallel_e_noise.exe 200000 %n_dobles% >> .\dbscan_noise_res.csv

::parallel_interno
.\dbscan_parallel_i_noise.exe 20000 1 >> .\dbscan_noise_res.csv
.\dbscan_parallel_i_noise.exe 20000 %n_medios% >> .\dbscan_noise_res.csv
.\dbscan_parallel_i_noise.exe 20000 %n% >> .\dbscan_noise_res.csv
.\dbscan_parallel_i_noise.exe 20000 %n_dobles% >> .\dbscan_noise_res.csv

.\dbscan_parallel_i_noise.exe 40000 1 >> .\dbscan_noise_res.csv
.\dbscan_parallel_i_noise.exe 40000 %n_medios% >> .\dbscan_noise_res.csv
.\dbscan_parallel_i_noise.exe 40000 %n% >> .\dbscan_noise_res.csv
.\dbscan_parallel_i_noise.exe 40000 %n_dobles% >> .\dbscan_noise_res.csv

.\dbscan_parallel_i_noise.exe 80000 1 >> .\dbscan_noise_res.csv
.\dbscan_parallel_i_noise.exe 80000 %n_medios% >> .\dbscan_noise_res.csv
.\dbscan_parallel_i_noise.exe 80000 %n% >> .\dbscan_noise_res.csv
.\dbscan_parallel_i_noise.exe 80000 %n_dobles% >> .\dbscan_noise_res.csv

.\dbscan_parallel_i_noise.exe 120000 1 >> .\dbscan_noise_res.csv
.\dbscan_parallel_i_noise.exe 120000 %n_medios% >> .\dbscan_noise_res.csv
.\dbscan_parallel_i_noise.exe 120000 %n% >> .\dbscan_noise_res.csv
.\dbscan_parallel_i_noise.exe 120000 %n_dobles% >> .\dbscan_noise_res.csv

.\dbscan_parallel_i_noise.exe 140000 1 >> .\dbscan_noise_res.csv
.\dbscan_parallel_i_noise.exe 140000 %n_medios% >> .\dbscan_noise_res.csv
.\dbscan_parallel_i_noise.exe 140000 %n% >> .\dbscan_noise_res.csv
.\dbscan_parallel_i_noise.exe 140000 %n_dobles% >> .\dbscan_noise_res.csv

.\dbscan_parallel_i_noise.exe 160000 1 >> .\dbscan_noise_res.csv
.\dbscan_parallel_i_noise.exe 160000 %n_medios% >> .\dbscan_noise_res.csv
.\dbscan_parallel_i_noise.exe 160000 %n% >> .\dbscan_noise_res.csv
.\dbscan_parallel_i_noise.exe 160000 %n_dobles% >> .\dbscan_noise_res.csv

.\dbscan_parallel_i_noise.exe 180000 1 >> .\dbscan_noise_res.csv
.\dbscan_parallel_i_noise.exe 180000 %n_medios% >> .\dbscan_noise_res.csv
.\dbscan_parallel_i_noise.exe 180000 %n% >> .\dbscan_noise_res.csv
.\dbscan_parallel_i_noise.exe 180000 %n_dobles% >> .\dbscan_noise_res.csv

.\dbscan_parallel_i_noise.exe 200000 1 >> .\dbscan_noise_res.csv
.\dbscan_parallel_i_noise.exe 200000 %n_medios% >> .\dbscan_noise_res.csv
.\dbscan_parallel_i_noise.exe 200000 %n% >> .\dbscan_noise_res.csv
.\dbscan_parallel_i_noise.exe 200000 %n_dobles% >> .\dbscan_noise_res.csv

::parallel_interno 2
.\dbscan_parallel_i_noise.exe 20000 1 >> .\dbscan_noise_res.csv
.\dbscan_parallel_i_noise.exe 20000 %n_medios% >> .\dbscan_noise_res.csv
.\dbscan_parallel_i_noise.exe 20000 %n% >> .\dbscan_noise_res.csv
.\dbscan_parallel_i_noise.exe 20000 %n_dobles% >> .\dbscan_noise_res.csv

.\dbscan_parallel_i_noise.exe 40000 1 >> .\dbscan_noise_res.csv
.\dbscan_parallel_i_noise.exe 40000 %n_medios% >> .\dbscan_noise_res.csv
.\dbscan_parallel_i_noise.exe 40000 %n% >> .\dbscan_noise_res.csv
.\dbscan_parallel_i_noise.exe 40000 %n_dobles% >> .\dbscan_noise_res.csv

.\dbscan_parallel_i_noise.exe 80000 1 >> .\dbscan_noise_res.csv
.\dbscan_parallel_i_noise.exe 80000 %n_medios% >> .\dbscan_noise_res.csv
.\dbscan_parallel_i_noise.exe 80000 %n% >> .\dbscan_noise_res.csv
.\dbscan_parallel_i_noise.exe 80000 %n_dobles% >> .\dbscan_noise_res.csv

.\dbscan_parallel_i_noise.exe 120000 1 >> .\dbscan_noise_res.csv
.\dbscan_parallel_i_noise.exe 120000 %n_medios% >> .\dbscan_noise_res.csv
.\dbscan_parallel_i_noise.exe 120000 %n% >> .\dbscan_noise_res.csv
.\dbscan_parallel_i_noise.exe 120000 %n_dobles% >> .\dbscan_noise_res.csv

.\dbscan_parallel_i_noise.exe 140000 1 >> .\dbscan_noise_res.csv
.\dbscan_parallel_i_noise.exe 140000 %n_medios% >> .\dbscan_noise_res.csv
.\dbscan_parallel_i_noise.exe 140000 %n% >> .\dbscan_noise_res.csv
.\dbscan_parallel_i_noise.exe 140000 %n_dobles% >> .\dbscan_noise_res.csv

.\dbscan_parallel_i_noise.exe 160000 1 >> .\dbscan_noise_res.csv
.\dbscan_parallel_i_noise.exe 160000 %n_medios% >> .\dbscan_noise_res.csv
.\dbscan_parallel_i_noise.exe 160000 %n% >> .\dbscan_noise_res.csv
.\dbscan_parallel_i_noise.exe 160000 %n_dobles% >> .\dbscan_noise_res.csv

.\dbscan_parallel_i_noise.exe 180000 1 >> .\dbscan_noise_res.csv
.\dbscan_parallel_i_noise.exe 180000 %n_medios% >> .\dbscan_noise_res.csv
.\dbscan_parallel_i_noise.exe 180000 %n% >> .\dbscan_noise_res.csv
.\dbscan_parallel_i_noise.exe 180000 %n_dobles% >> .\dbscan_noise_res.csv

.\dbscan_parallel_i_noise.exe 200000 1 >> .\dbscan_noise_res.csv
.\dbscan_parallel_i_noise.exe 200000 %n_medios% >> .\dbscan_noise_res.csv
.\dbscan_parallel_i_noise.exe 200000 %n% >> .\dbscan_noise_res.csv
.\dbscan_parallel_i_noise.exe 200000 %n_dobles% >> .\dbscan_noise_res.csv

::parallel_interno 3
.\dbscan_parallel_i_noise.exe 20000 1 >> .\dbscan_noise_res.csv
.\dbscan_parallel_i_noise.exe 20000 %n_medios% >> .\dbscan_noise_res.csv
.\dbscan_parallel_i_noise.exe 20000 %n% >> .\dbscan_noise_res.csv
.\dbscan_parallel_i_noise.exe 20000 %n_dobles% >> .\dbscan_noise_res.csv

.\dbscan_parallel_i_noise.exe 40000 1 >> .\dbscan_noise_res.csv
.\dbscan_parallel_i_noise.exe 40000 %n_medios% >> .\dbscan_noise_res.csv
.\dbscan_parallel_i_noise.exe 40000 %n% >> .\dbscan_noise_res.csv
.\dbscan_parallel_i_noise.exe 40000 %n_dobles% >> .\dbscan_noise_res.csv

.\dbscan_parallel_i_noise.exe 80000 1 >> .\dbscan_noise_res.csv
.\dbscan_parallel_i_noise.exe 80000 %n_medios% >> .\dbscan_noise_res.csv
.\dbscan_parallel_i_noise.exe 80000 %n% >> .\dbscan_noise_res.csv
.\dbscan_parallel_i_noise.exe 80000 %n_dobles% >> .\dbscan_noise_res.csv

.\dbscan_parallel_i_noise.exe 120000 1 >> .\dbscan_noise_res.csv
.\dbscan_parallel_i_noise.exe 120000 %n_medios% >> .\dbscan_noise_res.csv
.\dbscan_parallel_i_noise.exe 120000 %n% >> .\dbscan_noise_res.csv
.\dbscan_parallel_i_noise.exe 120000 %n_dobles% >> .\dbscan_noise_res.csv

.\dbscan_parallel_i_noise.exe 140000 1 >> .\dbscan_noise_res.csv
.\dbscan_parallel_i_noise.exe 140000 %n_medios% >> .\dbscan_noise_res.csv
.\dbscan_parallel_i_noise.exe 140000 %n% >> .\dbscan_noise_res.csv
.\dbscan_parallel_i_noise.exe 140000 %n_dobles% >> .\dbscan_noise_res.csv

.\dbscan_parallel_i_noise.exe 160000 1 >> .\dbscan_noise_res.csv
.\dbscan_parallel_i_noise.exe 160000 %n_medios% >> .\dbscan_noise_res.csv
.\dbscan_parallel_i_noise.exe 160000 %n% >> .\dbscan_noise_res.csv
.\dbscan_parallel_i_noise.exe 160000 %n_dobles% >> .\dbscan_noise_res.csv

.\dbscan_parallel_i_noise.exe 180000 1 >> .\dbscan_noise_res.csv
.\dbscan_parallel_i_noise.exe 180000 %n_medios% >> .\dbscan_noise_res.csv
.\dbscan_parallel_i_noise.exe 180000 %n% >> .\dbscan_noise_res.csv
.\dbscan_parallel_i_noise.exe 180000 %n_dobles% >> .\dbscan_noise_res.csv

.\dbscan_parallel_i_noise.exe 200000 1 >> .\dbscan_noise_res.csv
.\dbscan_parallel_i_noise.exe 200000 %n_medios% >> .\dbscan_noise_res.csv
.\dbscan_parallel_i_noise.exe 200000 %n% >> .\dbscan_noise_res.csv
.\dbscan_parallel_i_noise.exe 200000 %n_dobles% >> .\dbscan_noise_res.csv


