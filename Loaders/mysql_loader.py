import pandas as pd

def limpiar_tablas(engine):

    with engine.begin() as conn:

        conn.exec_driver_sql(
            "SET FOREIGN_KEY_CHECKS = 0"
        )

        conn.exec_driver_sql(
            "TRUNCATE TABLE fact_viajes"
        )

        conn.exec_driver_sql(
            "TRUNCATE TABLE dim_tiempo"
        )

        conn.exec_driver_sql(
            "TRUNCATE TABLE dim_ubicacion"
        )

        conn.exec_driver_sql(
            "TRUNCATE TABLE dim_pago"
        )

        conn.exec_driver_sql(
            "SET FOREIGN_KEY_CHECKS = 1"
        )

def insertar_dataframe(df, tabla, engine):

    df.to_sql(
        tabla,
        con=engine,
        if_exists="append",
        index=False,
        method="multi",
        chunksize=5000
    )

def obtener_dimensiones(engine):

    df_tiempo = pd.read_sql(
        "SELECT tiempo_id, fecha, es_fin_semana FROM dim_tiempo",
        engine
    )

    df_ubicacion = pd.read_sql(
        "SELECT ubicacion_id, estado, zona FROM dim_ubicacion",
        engine
    )

    df_pago = pd.read_sql(
        "SELECT pago_id, metodo_pago FROM dim_pago",
        engine
    )

    return df_tiempo, df_ubicacion, df_pago