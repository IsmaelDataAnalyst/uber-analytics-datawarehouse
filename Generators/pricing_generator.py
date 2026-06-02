import random
import numpy as np

def generar_distancia():
    prob = random.random()

    if prob < 0.60:
        return round(np.random.uniform(2, 10), 2)
    elif prob < 0.90:
        return round(np.random.uniform(10, 25), 2)
    else:
        return round(np.random.uniform(25, 80), 2)

def generar_duracion(distancia):
    velocidad_promedio = random.uniform(20, 45)
    duracion = (distancia / velocidad_promedio) * 60

    trafico = random.uniform(1.0, 1.8)

    return round(duracion * trafico, 2)

def calcular_tarifa(distancia, duracion, zona, fin_semana):

    tarifa_base = 25

    costo_km = random.uniform(7, 14)
    costo_min = random.uniform(1.5, 3.5)

    subtotal = (
        tarifa_base +
        (distancia * costo_km) +
        (duracion * costo_min)
    )

    dinamica = 1.0

    if fin_semana:
        dinamica += random.uniform(0.1, 0.5)

    if zona in ["Aeropuerto", "Premium", "Zona Hotelera"]:
        dinamica += random.uniform(0.2, 0.7)

    subtotal_dinamico = subtotal * dinamica

    impuestos = subtotal_dinamico * 0.16

    propina = 0

    if random.random() < 0.45:
        propina = subtotal_dinamico * random.uniform(0.03, 0.15)

    total = subtotal_dinamico + impuestos + propina

    ganancia_uber = subtotal_dinamico * random.uniform(0.18, 0.32)

    return {
        "tarifa_base": round(tarifa_base, 2),
        "tarifa_dinamica": round(subtotal_dinamico, 2),
        "impuestos": round(impuestos, 2),
        "propina": round(propina, 2),
        "total_pagado": round(total, 2),
        "ganancia_uber": round(ganancia_uber, 2)
    }