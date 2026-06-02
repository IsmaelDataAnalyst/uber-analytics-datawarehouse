from config.db_config import engine

from generators.dimensions_generator import (
    generar_dim_tiempo,
    generar_dim_ubicacion,
    generar_dim_pago
)

from generators.trips_generator import generar_viajes

from loaders.mysql_loader import (
    limpiar_tablas,
    insertar_dataframe,
    obtener_dimensiones
)

print("===================================")
print("UBER DATA WAREHOUSE GENERATOR")
print("===================================")

print("Generando dimensiones...")

dim_tiempo = generar_dim_tiempo()
dim_ubicacion = generar_dim_ubicacion()
dim_pago = generar_dim_pago()

print("Limpiando tablas...")

limpiar_tablas(engine)

print("Insertando dimensiones...")

insertar_dataframe(
    dim_tiempo,
    "dim_tiempo",
    engine
)

insertar_dataframe(
    dim_ubicacion,
    "dim_ubicacion",
    engine
)

insertar_dataframe(
    dim_pago,
    "dim_pago",
    engine
)

print("Obteniendo IDs...")

df_tiempo_ids, df_ubicacion_ids, df_pago_ids = (
    obtener_dimensiones(engine)
)

generar_viajes(
    engine,
    insertar_dataframe,
    df_tiempo_ids,
    df_ubicacion_ids,
    df_pago_ids
)

print("===================================")
print("PROCESO FINALIZADO")
print("===================================")