# Uber Analytics Data Warehouse

> Data Warehouse escalable de Uber con más de 10 millones de registros sintéticos generados con Python y MySQL para proyectos de analítica, dashboards y Machine Learning.

---

# Descripción

Este proyecto consiste en la construcción de un **Data Warehouse de Uber** utilizando:

* MySQL
* Python
* Modelado Dimensional
* Generación de Datos Sintéticos
* Procesos ETL

El objetivo es proporcionar un entorno realista para practicar:

* SQL
* Business Intelligence
* Data Engineering
* Data Mining
* Machine Learning
* Analítica de datos

---

# Características

* Más de 10 millones de registros
* Datos sintéticos coherentes
* Simulación realista de viajes Uber
* Modelo dimensional tipo Star Schema
* Inserciones masivas por lotes
* Arquitectura escalable

---

# Tecnologías Utilizadas

| Tecnología | Uso                      |
| ---------- | ------------------------ |
| Python     | Generación de datos      |
| MySQL      | Data Warehouse           |
| Pandas     | Procesamiento de datos   |
| NumPy      | Cálculos numéricos       |
| SQLAlchemy | Conexión a base de datos |
| Faker      | Datos ficticios          |

---

# Estructura del Proyecto

```text id="b4x2fr"
uber-analytics-datawarehouse/
│
├── README.md
├── requirements.txt
├── .gitignore
│
├── sql/
│   ├── ddl/
│   ├── dml/
│   └── backups/
│
├── python/
│   ├── config/
│   ├── generators/
│   ├── loaders/
│   └── main.py
│
├── dashboards/
├── notebooks/
├── ml/
└── docs/
```

---

# Modelo del Data Warehouse

## Tabla de Hechos

### fact_viajes

Contiene información de los viajes:

* Distancia recorrida
* Duración
* Tarifa dinámica
* Impuestos
* Propinas
* Pago total
* Ganancia Uber
* Viajes completados
* Viajes cancelados

---

## Tablas Dimensionales

### dim_tiempo

* Fecha
* Indicador de fin de semana

### dim_ubicacion

* Estado
* Zona

### dim_pago

* Método de pago

---

# Lógica de los Datos Sintéticos

El proyecto genera datos con reglas coherentes:

* Viajes cancelados generan ingresos en cero
* Mayor distancia = mayor ganancia
* Mayor duración = mayor tarifa
* Tarifas dinámicas en fines de semana y zonas premium

---

# Instalación

## Clonar repositorio

```bash id="w8gk1m"
git clone https://github.com/TU_USUARIO/uber-analytics-datawarehouse.git
```

---

## Instalar dependencias

```bash id="q2m8ns"
pip install -r requirements.txt
```

---

# Ejecución

## Crear base de datos

Ejecutar los scripts SQL ubicados en:

```text id="x1d7pc"
sql/ddl/
```

---

## Ejecutar generador de datos

```bash id="n9l5te"
python python/main.py
```

---

# Próximas Mejoras

* Dashboard en Power BI
* Machine Learning
* Data Mining
* Modelos predictivos
* Integración con Docker
* Despliegue en la nube

---

# Roadmap

* [x] Modelado dimensional
* [x] Generación de datos sintéticos
* [x] Carga masiva ETL
* [x] Más de 10M de registros
* [ ] Dashboards
* [ ] Machine Learning
* [ ] Data Mining

---

# Propósito Educativo

Este proyecto fue creado para:

* Aprendizaje
* Portafolio profesional
* Práctica SQL
* Ejercicios de BI
* Proyectos de ingeniería de datos

Todos los datos generados son completamente sintéticos.

---

# Autor

## Ismael Martínez

Proyectos de Data Analytics & Data Engineering

---
