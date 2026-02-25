# Taller de SQL - El Último Salto 🪂

Este repositorio contiene la solución detallada a los 30 ejercicios propuestos para el taller de análisis de base de datos relacionales (SQLite).

##  Datos del Estudiante
* **Nombre:** Sebastian Minayo
* **Carrera:** Ingeniería de Sistemas
* **Materia:** Infraestructura para grandes volumenes de datos

---

##  Cómo ejecutar las soluciones

Para visualizar y ejecutar las consultas de este taller, sigue estos pasos:

1. **Clonar el repositorio:**
   `git clone https://github.com/sebastianminayo/taller_sql_ultimo_salto.git`
2. **Abrir en VS Code:** Asegúrate de tener instalada la extensión **SQLite** (de alexcvzz).
3. **Vincular la Base de Datos:**
   - Presiona `Ctrl + Shift + P` y busca `SQLite: Open Database`.
   - Selecciona el archivo `tienda.db` ubicado en la carpeta `/data`.
4. **Ejecutar Consultas:**
   - Abre cualquier archivo en la carpeta `/soluciones`.
   - Sombrea el código, haz clic derecho y selecciona **Run Selected Query**.
   - En algunas ocasiones, puede que toque volver a seleccionar 'tienda.db' para proceder a la ejecucion de la   consulta.

---

##  Supuestos e Interpretaciones

Durante el desarrollo del taller, se tomaron las siguientes consideraciones técnicas:

* **Cálculo de Pérdidas (Ejercicio 17):** Se asumió que el cupón "ULTIMO_SUSPIRO" aplica un **30% de descuento**. Por lo tanto, el precio pagado representa el 70% del valor original ($Total / 0.70$).
* **Cálculo de Edades:** Dado que SQLite no tiene una función `DATEDIFF` directa, se utilizó `strftime('%Y', 'now')` para calcular la edad aproximada basándose únicamente en el año de nacimiento.
* **Clientes en Riesgo (Ejercicio 28):** Se interpretó como "riesgo" a cualquier cliente cuya última transacción registrada sea mayor a **180 días** respecto a la fecha actual del sistema.
* **Exclusividad (Ejercicio 26):** Para identificar clientes que "solo" compraron paracaídas, se implementó una lógica de exclusión mediante una subconsulta (`NOT IN`) para descartar a quienes tuvieran accesorios en su historial.

---