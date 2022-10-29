# Parallel-dbscan

El algoritmo dbscan permite encontrar clusters o cúmulos y detectar ruido en un conjunto de puntos. Los únicos parámetros que necesita son epsilon y minPts. El primero es la distancia máxima entre dos puntos para que sean considerados vecinos y el segundo es el número mínimo de puntos que debe tener un vecindario para ser considerado un cluster.
Para este proyecto se implemento un "naive" dbscan ya que solo se encarga de encontrar el ruido y no de distinguir entre clusters. 

El objetivo del proyecto es comparar como mejora la eficiencia al paralelizar el algoritmo y ver como cambia según el número de hilos y el tamaño del dataset. 

## Requerimientos
* compilador de c++
* openmp
* sistema operativo windows
* python (únicamente para correr el notebook)
* jupyter notebook (únicamente para correr el notebook)
* librerías de python: 
    * pandas: `pip install pandas`
    * plotly: `pip install plotly`
    * matplotlib: `pip install matplotlib`
    * scipy: `pip install scipy`
    * scikit-learn: `pip install -U scikit-learn`
    * kaleido: `pip install -U kaleido` (para mostrar gráficos en el github)

## Ejecución
Se explica como ejecutar el programa en el notebook.

