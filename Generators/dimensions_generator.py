import pandas as pd
from datetime import datetime

FECHA_INICIO = datetime(2023, 1, 1)
FECHA_FIN = datetime(2025, 12, 31)

estados_mexico = [
    "CDMX",
    "MEX",
    "JAL",
    "NLE",
    "PUE",
    "QRO",
    "GUA",
    "YUC",
    "SON",
    "BCN"
]

zonas = [
    "Centro",
    "Aeropuerto",
    "Zona Hotelera",
    "Residencial",
    "Industrial",
    "Universitaria",
    "Financiera",
    "Comercial",
    "Turistica",
    "Premium"
]

metodos_pago = [
    "Tarjeta",
    "Efectivo",
    "PayPal",
    "Apple Pay",
    "Google Pay"
]

def generar_dim_tiempo():

    fechas = pd.date_range(FECHA_INICIO, FECHA_FIN, freq="D")

    dim_tiempo = pd.DataFrame({
        "fecha": fechas
    })

    dim_tiempo["es_fin_semana"] = (
        dim_tiempo["fecha"].dt.dayofweek >= 5
    )

    return dim_tiempo

def generar_dim_ubicacion():

    ubicaciones = []

    for estado in estados_mexico:
        for zona in zonas:

            ubicaciones.append({
                "estado": estado,
                "zona": zona
            })

    return pd.DataFrame(ubicaciones)

def generar_dim_pago():

    return pd.DataFrame({
        "metodo_pago": metodos_pago
    })