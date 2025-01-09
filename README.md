Aquí tienes el **README.md** para tu proyecto, diseñado para ser claro, profesional y atractivo para tu portafolio:  

---

# 🎬 Proyecto de Análisis de la Base de Datos Sakila  

¡Bienvenido al proyecto de análisis de la base de datos Sakila! Este proyecto utiliza **Python** y **MySQL** para explorar y analizar una base de datos relacional de alquiler de películas, ejecutando múltiples consultas SQL de forma interactiva o automatizada.  

---

## 📊 **Descripción del Proyecto**  
El objetivo de este proyecto es realizar un análisis detallado de la base de datos **Sakila**, un dataset ampliamente utilizado para aprender sobre bases de datos relacionales. Se han desarrollado 22 consultas SQL que responden preguntas de negocio clave, como:  
- ¿Cuántas películas existen para cada categoría?  
- ¿Qué actores han participado en más de 10 películas?  
- ¿Cuántas películas de clasificación "PG-13" hay en la base de datos?  
- ¿Qué películas han sido alquiladas por más de 5 días?  

Este proyecto permite:  
✅ Ejecutar **todas las consultas** de forma automatizada y guardar los resultados en un archivo `.txt`.  
✅ Elegir una **consulta específica** y visualizar los resultados directamente en la terminal.  

---

## 🗂️ **Estructura del Proyecto**  
```plaintext
📦 sakila-analysis
│
├── 📁 queries               # Contiene las 22 consultas SQL como archivos individuales
│   ├── query_01.sql
│   ├── query_02.sql
│   └── ...                 
│
├── 📁 data                  # Espacio opcional para un backup de la base de datos Sakila
│
├── 📄 db_connector.py       # Script para la conexión a la base de datos MySQL
│
├── 📄 analysis.py           # Lógica principal para ejecutar las queries (todas o individuales)
│
├── 📄 main.py               # Archivo principal que controla el menú interactivo
│
├── 📄 requirements.txt      # Lista de dependencias necesarias (MySQL Connector)
│
├── 📄 results.txt           # Archivo generado con los resultados de las consultas
│
└── 📄 README.md             # Este archivo con la documentación del proyecto
```

---

## 🛠️ **Configuración y Requisitos Previos**  
### 1. **Instalar Python y MySQL Server:**  
   - Python 3.x  
   - MySQL Server con la base de datos `sakila` importada.  

### 2. **Clonar el Repositorio:**  
```bash
git clone <URL_DEL_REPOSITORIO>
cd sakila-analysis
```

### 3. **Instalar las Dependencias:**  
```bash
pip install -r requirements.txt
```

### 4. **Configurar la Conexión a la Base de Datos:**  
Edita el archivo `db_connector.py` con tus credenciales de MySQL:  
```python
config = {
    'host': 'localhost',
    'user': 'TU_USUARIO',
    'password': 'TU_CONTRASEÑA',
    'database': 'sakila'
}
```

---

## 🚀 **Cómo Ejecutar el Proyecto**  
Para ejecutar el proyecto, abre una terminal en la carpeta raíz y ejecuta:  
```bash
python main.py
```

### 📌 **Opciones disponibles en el menú:**  
1. **Ejecutar todas las queries:** Ejecuta todas las consultas y guarda los resultados en `results.txt`.  
2. **Ejecutar una query específica:** Permite seleccionar una consulta y mostrar los resultados en la terminal.  
3. **Salir:** Cierra la aplicación.  

---

## 📈 **Ejemplo de Resultados (results.txt)**  
```plaintext
Resultados de query_01.sql:
('ACADEMY DINOSAUR')
('ACE GOLDFINGER')
('ADAPTATION HOLES')
...
Resultados de query_10.sql:
Customer ID: 35 | Name: JANE | Surname: DOE | Total Films Rented: 12
...
```

---

## 📦 **Queries Incluidas**  
Este proyecto incluye **22 consultas SQL** ubicadas en la carpeta `queries`. Algunos ejemplos son:  
- `query_01.sql`: Películas únicas en la base de datos.  
- `query_10.sql`: Cantidad total de películas alquiladas por cada cliente.  
- `query_20.sql`: Categorías con un promedio de duración superior a 120 minutos.  

---

## ✅ **Mejoras Futuras**  
- Implementar visualización gráfica con `matplotlib` o `seaborn`.  
- Agregar validación para evitar errores de conexión.  
- Crear una interfaz gráfica con `Tkinter`.  

---

## 📧 **Contacto y Créditos**  
Proyecto desarrollado por **[Tu Nombre]**.  
📧 Contacto: [Tu Email]  
📂 LinkedIn: [Tu Perfil de LinkedIn]  

---

## 🎯 **Conclusión**  
Este proyecto es una demostración completa de habilidades con **Python, SQL y MySQL**, ideal para tu portafolio profesional. No dudes en explorar y mejorar este proyecto con nuevas consultas o integraciones. ¡Buena suerte! 🚀  
