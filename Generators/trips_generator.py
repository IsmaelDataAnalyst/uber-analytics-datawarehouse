import random
import pandas as pd
from tqdm import tqdm

from generators.pricing_generator import (
    generar_distancia,
    generar_duracion,
    calcular_tarifa
)

TOTAL_REGISTROS = 10_000_000
CHUNK_SIZE = 100_000

def generar_viajes(
    engine,
    insertar_dataframe,
    df_tiempo_ids,
    df_ubicacion_ids,
    df_pago_ids
):

    num_chunks = TOTAL_REGISTROS // CHUNK_SIZE

    print("Generando viajes...")

    for chunk in tqdm(range(num_chunks)):

        registros = []

        for _ in range(CHUNK_SIZE):

            tiempo_row = df_tiempo_ids.sample(1).iloc[0]
            ubicacion_row = df_ubicacion_ids.sample(1).iloc[0]
            pago_row = df_pago_ids.sample(1).iloc[0]

            tiempo_id = int(tiempo_row["tiempo_id"])
            ubicacion_id = int(ubicacion_row["ubicacion_id"])
            pago_id = int(pago_row["pago_id"])

            zona = ubicacion_row["zona"]

            es_fin_semana = bool(
                tiempo_row["es_fin_semana"]
            )

            cancelado = random.random() < 0.08

            if cancelado:

                registros.append({
                    "tiempo_id": tiempo_id,
                    "ubicacion_id": ubicacion_id,
                    "pago_id": pago_id,
                    "distancia_km": 0,
                    "duracion_min": 0,
                    "tarifa_base": 0,
                    "tarifa_dinamica": 0,
                    "impuestos": 0,
                    "propina": 0,
                    "total_pagado": 0,
                    "ganancia_uber": 0,
                    "viaje_completado": 0,
                    "viaje_cancelado": 1
                })

            else:

                distancia = generar_distancia()

                duracion = generar_duracion(distancia)

                tarifas = calcular_tarifa(
                    distancia,
                    duracion,
                    zona,
                    es_fin_semana
                )

                registros.append({
                    "tiempo_id": tiempo_id,
                    "ubicacion_id": ubicacion_id,
                    "pago_id": pago_id,
                    "distancia_km": distancia,
                    "duracion_min": duracion,
                    "tarifa_base": tarifas["tarifa_base"],
                    "tarifa_dinamica": tarifas["tarifa_dinamica"],
                    "impuestos": tarifas["impuestos"],
                    "propina": tarifas["propina"],
                    "total_pagado": tarifas["total_pagado"],
                    "ganancia_uber": tarifas["ganancia_uber"],
                    "viaje_completado": 1,
                    "viaje_cancelado": 0
                })

        df_chunk = pd.DataFrame(registros)

        insertar_dataframe(
            df_chunk,
            "fact_viajes",
            engine
        )