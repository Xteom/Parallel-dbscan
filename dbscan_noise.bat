::exe puntos hilos
::puntos 20000, 40000, 80000, 120000, 140000, 160000, 180000, 200000
::hilos 1, tot/2, tot, 2tot

:: %1 y n son el numero de hilos totales disponibles
SET /A n = %1

SET /A n_medios = %n% / 2
SET /A n_dobles = %n% * 2

::serial 
echo "serial"
.\dbscan_serial_noise.exe 20000 > .\dbscan_noise_res.csv
.\dbscan_serial_noise.exe 40000 >> .\dbscan_noise_res.csv
.\dbscan_serial_noise.exe 80000 >> .\dbscan_noise_res.csv
.\dbscan_serial_noise.exe 120000 >> .\dbscan_noise_res.csv
.\dbscan_serial_noise.exe 140000 >> .\dbscan_noise_res.csv
.\dbscan_serial_noise.exe 160000 >> .\dbscan_noise_res.csv
.\dbscan_serial_noise.exe 180000 >> .\dbscan_noise_res.csv
.\dbscan_serial_noise.exe 200000 >> .\dbscan_noise_res.csv

::serial 2
echo "serial 2"
.\dbscan_serial_noise.exe 20000 >> .\dbscan_noise_res.csv
.\dbscan_serial_noise.exe 40000 >> .\dbscan_noise_res.csv
.\dbscan_serial_noise.exe 80000 >> .\dbscan_noise_res.csv
.\dbscan_serial_noise.exe 120000 >> .\dbscan_noise_res.csv
.\dbscan_serial_noise.exe 140000 >> .\dbscan_noise_res.csv
.\dbscan_serial_noise.exe 160000 >> .\dbscan_noise_res.csv
.\dbscan_serial_noise.exe 180000 >> .\dbscan_noise_res.csv
.\dbscan_serial_noise.exe 200000 >> .\dbscan_noise_res.csv

::serial 3
echo "serial 3"
.\dbscan_serial_noise.exe 20000 >> .\dbscan_noise_res.csv
.\dbscan_serial_noise.exe 40000 >> .\dbscan_noise_res.csv
.\dbscan_serial_noise.exe 80000 >> .\dbscan_noise_res.csv
.\dbscan_serial_noise.exe 120000 >> .\dbscan_noise_res.csv
.\dbscan_serial_noise.exe 140000 >> .\dbscan_noise_res.csv
.\dbscan_serial_noise.exe 160000 >> .\dbscan_noise_res.csv
.\dbscan_serial_noise.exe 180000 >> .\dbscan_noise_res.csv
.\dbscan_serial_noise.exe 200000 >> .\dbscan_noise_res.csv

::parallel
echo "parallel"

echo "20000"	
.\dbscan_parallel_noise.exe 20000 1 >> .\dbscan_noise_res.csv
.\dbscan_parallel_noise.exe 20000 %n_medios% >> .\dbscan_noise_res.csv
.\dbscan_parallel_noise.exe 20000 %n% >> .\dbscan_noise_res.csv
.\dbscan_parallel_noise.exe 20000 %n_dobles% >> .\dbscan_noise_res.csv

echo "40000"
.\dbscan_parallel_noise.exe 40000 1 >> .\dbscan_noise_res.csv
.\dbscan_parallel_noise.exe 40000 %n_medios% >> .\dbscan_noise_res.csv
.\dbscan_parallel_noise.exe 40000 %n% >> .\dbscan_noise_res.csv
.\dbscan_parallel_noise.exe 40000 %n_dobles% >> .\dbscan_noise_res.csv

echo "80000"
.\dbscan_parallel_noise.exe 80000 1 >> .\dbscan_noise_res.csv
.\dbscan_parallel_noise.exe 80000 %n_medios% >> .\dbscan_noise_res.csv
.\dbscan_parallel_noise.exe 80000 %n% >> .\dbscan_noise_res.csv
.\dbscan_parallel_noise.exe 80000 %n_dobles% >> .\dbscan_noise_res.csv

echo "120000"
.\dbscan_parallel_noise.exe 120000 1 >> .\dbscan_noise_res.csv
.\dbscan_parallel_noise.exe 120000 %n_medios% >> .\dbscan_noise_res.csv
.\dbscan_parallel_noise.exe 120000 %n% >> .\dbscan_noise_res.csv
.\dbscan_parallel_noise.exe 120000 %n_dobles% >> .\dbscan_noise_res.csv

echo "140000"
.\dbscan_parallel_noise.exe 140000 1 >> .\dbscan_noise_res.csv
.\dbscan_parallel_noise.exe 140000 %n_medios% >> .\dbscan_noise_res.csv
.\dbscan_parallel_noise.exe 140000 %n% >> .\dbscan_noise_res.csv
.\dbscan_parallel_noise.exe 140000 %n_dobles% >> .\dbscan_noise_res.csv

echo "160000"
.\dbscan_parallel_noise.exe 160000 1 >> .\dbscan_noise_res.csv
.\dbscan_parallel_noise.exe 160000 %n_medios% >> .\dbscan_noise_res.csv
.\dbscan_parallel_noise.exe 160000 %n% >> .\dbscan_noise_res.csv
.\dbscan_parallel_noise.exe 160000 %n_dobles% >> .\dbscan_noise_res.csv

echo "180000"
.\dbscan_parallel_noise.exe 180000 1 >> .\dbscan_noise_res.csv
.\dbscan_parallel_noise.exe 180000 %n_medios% >> .\dbscan_noise_res.csv
.\dbscan_parallel_noise.exe 180000 %n% >> .\dbscan_noise_res.csv
.\dbscan_parallel_noise.exe 180000 %n_dobles% >> .\dbscan_noise_res.csv

echo "200000"
.\dbscan_parallel_noise.exe 200000 1 >> .\dbscan_noise_res.csv
.\dbscan_parallel_noise.exe 200000 %n_medios% >> .\dbscan_noise_res.csv
.\dbscan_parallel_noise.exe 200000 %n% >> .\dbscan_noise_res.csv
.\dbscan_parallel_noise.exe 200000 %n_dobles% >> .\dbscan_noise_res.csv

::parallel 2
echo "parallel 2"

echo "20000 - 2"
.\dbscan_parallel_noise.exe 20000 1 >> .\dbscan_noise_res.csv
.\dbscan_parallel_noise.exe 20000 %n_medios% >> .\dbscan_noise_res.csv
.\dbscan_parallel_noise.exe 20000 %n% >> .\dbscan_noise_res.csv
.\dbscan_parallel_noise.exe 20000 %n_dobles% >> .\dbscan_noise_res.csv

echo "40000 - 2"
.\dbscan_parallel_noise.exe 40000 1 >> .\dbscan_noise_res.csv
.\dbscan_parallel_noise.exe 40000 %n_medios% >> .\dbscan_noise_res.csv
.\dbscan_parallel_noise.exe 40000 %n% >> .\dbscan_noise_res.csv
.\dbscan_parallel_noise.exe 40000 %n_dobles% >> .\dbscan_noise_res.csv

echo "80000 - 2"
.\dbscan_parallel_noise.exe 80000 1 >> .\dbscan_noise_res.csv
.\dbscan_parallel_noise.exe 80000 %n_medios% >> .\dbscan_noise_res.csv
.\dbscan_parallel_noise.exe 80000 %n% >> .\dbscan_noise_res.csv
.\dbscan_parallel_noise.exe 80000 %n_dobles% >> .\dbscan_noise_res.csv

echo "120000 - 2"
.\dbscan_parallel_noise.exe 120000 1 >> .\dbscan_noise_res.csv
.\dbscan_parallel_noise.exe 120000 %n_medios% >> .\dbscan_noise_res.csv
.\dbscan_parallel_noise.exe 120000 %n% >> .\dbscan_noise_res.csv
.\dbscan_parallel_noise.exe 120000 %n_dobles% >> .\dbscan_noise_res.csv

echo "140000 - 2"
.\dbscan_parallel_noise.exe 140000 1 >> .\dbscan_noise_res.csv
.\dbscan_parallel_noise.exe 140000 %n_medios% >> .\dbscan_noise_res.csv
.\dbscan_parallel_noise.exe 140000 %n% >> .\dbscan_noise_res.csv
.\dbscan_parallel_noise.exe 140000 %n_dobles% >> .\dbscan_noise_res.csv

echo "160000 - 2"
.\dbscan_parallel_noise.exe 160000 1 >> .\dbscan_noise_res.csv
.\dbscan_parallel_noise.exe 160000 %n_medios% >> .\dbscan_noise_res.csv
.\dbscan_parallel_noise.exe 160000 %n% >> .\dbscan_noise_res.csv
.\dbscan_parallel_noise.exe 160000 %n_dobles% >> .\dbscan_noise_res.csv

echo "180000 - 2"
.\dbscan_parallel_noise.exe 180000 1 >> .\dbscan_noise_res.csv
.\dbscan_parallel_noise.exe 180000 %n_medios% >> .\dbscan_noise_res.csv
.\dbscan_parallel_noise.exe 180000 %n% >> .\dbscan_noise_res.csv
.\dbscan_parallel_noise.exe 180000 %n_dobles% >> .\dbscan_noise_res.csv

echo "200000 - 2"
.\dbscan_parallel_noise.exe 200000 1 >> .\dbscan_noise_res.csv
.\dbscan_parallel_noise.exe 200000 %n_medios% >> .\dbscan_noise_res.csv
.\dbscan_parallel_noise.exe 200000 %n% >> .\dbscan_noise_res.csv
.\dbscan_parallel_noise.exe 200000 %n_dobles% >> .\dbscan_noise_res.csv

::parallel 3
echo "parallel 3"

echo "20000 - 3"
.\dbscan_parallel_noise.exe 20000 1 >> .\dbscan_noise_res.csv
.\dbscan_parallel_noise.exe 20000 %n_medios% >> .\dbscan_noise_res.csv
.\dbscan_parallel_noise.exe 20000 %n% >> .\dbscan_noise_res.csv
.\dbscan_parallel_noise.exe 20000 %n_dobles% >> .\dbscan_noise_res.csv

echo "40000 - 3"
.\dbscan_parallel_noise.exe 40000 1 >> .\dbscan_noise_res.csv
.\dbscan_parallel_noise.exe 40000 %n_medios% >> .\dbscan_noise_res.csv
.\dbscan_parallel_noise.exe 40000 %n% >> .\dbscan_noise_res.csv
.\dbscan_parallel_noise.exe 40000 %n_dobles% >> .\dbscan_noise_res.csv

echo "80000 - 3"
.\dbscan_parallel_noise.exe 80000 1 >> .\dbscan_noise_res.csv
.\dbscan_parallel_noise.exe 80000 %n_medios% >> .\dbscan_noise_res.csv
.\dbscan_parallel_noise.exe 80000 %n% >> .\dbscan_noise_res.csv
.\dbscan_parallel_noise.exe 80000 %n_dobles% >> .\dbscan_noise_res.csv

echo "120000 - 3"
.\dbscan_parallel_noise.exe 120000 1 >> .\dbscan_noise_res.csv
.\dbscan_parallel_noise.exe 120000 %n_medios% >> .\dbscan_noise_res.csv
.\dbscan_parallel_noise.exe 120000 %n% >> .\dbscan_noise_res.csv
.\dbscan_parallel_noise.exe 120000 %n_dobles% >> .\dbscan_noise_res.csv

echo "140000 - 3"
.\dbscan_parallel_noise.exe 140000 1 >> .\dbscan_noise_res.csv
.\dbscan_parallel_noise.exe 140000 %n_medios% >> .\dbscan_noise_res.csv
.\dbscan_parallel_noise.exe 140000 %n% >> .\dbscan_noise_res.csv
.\dbscan_parallel_noise.exe 140000 %n_dobles% >> .\dbscan_noise_res.csv

echo "160000 - 3"
.\dbscan_parallel_noise.exe 160000 1 >> .\dbscan_noise_res.csv
.\dbscan_parallel_noise.exe 160000 %n_medios% >> .\dbscan_noise_res.csv
.\dbscan_parallel_noise.exe 160000 %n% >> .\dbscan_noise_res.csv
.\dbscan_parallel_noise.exe 160000 %n_dobles% >> .\dbscan_noise_res.csv

echo "180000 - 3"
.\dbscan_parallel_noise.exe 180000 1 >> .\dbscan_noise_res.csv
.\dbscan_parallel_noise.exe 180000 %n_medios% >> .\dbscan_noise_res.csv
.\dbscan_parallel_noise.exe 180000 %n% >> .\dbscan_noise_res.csv
.\dbscan_parallel_noise.exe 180000 %n_dobles% >> .\dbscan_noise_res.csv

echo "200000 - 3"
.\dbscan_parallel_noise.exe 200000 1 >> .\dbscan_noise_res.csv
.\dbscan_parallel_noise.exe 200000 %n_medios% >> .\dbscan_noise_res.csv
.\dbscan_parallel_noise.exe 200000 %n% >> .\dbscan_noise_res.csv
.\dbscan_parallel_noise.exe 200000 %n_dobles% >> .\dbscan_noise_res.csv