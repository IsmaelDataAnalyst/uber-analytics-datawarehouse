CREATE DATABASE uber_dw;

USE uber_dw;

CREATE TABLE dim_tiempo (
    tiempo_id INT PRIMARY KEY AUTO_INCREMENT,
    fecha DATE NULL,
    es_fin_semana BOOLEAN NULL
);

CREATE TABLE dim_ubicacion (
    ubicacion_id INT PRIMARY KEY AUTO_INCREMENT,
    estado CHAR(3) NOT NULL,
    zona VARCHAR(50) NULL
);

CREATE TABLE dim_pago (
    pago_id INT PRIMARY KEY AUTO_INCREMENT,
    metodo_pago VARCHAR(50)
);

CREATE TABLE fact_viajes (
    viaje_id BIGINT PRIMARY KEY AUTO_INCREMENT,
    tiempo_id INT,
    ubicacion_id INT,
    pago_id INT,
    distancia_km DECIMAL(10,2) NOT NULL,
    duracion_min DECIMAL(10,2) NOT NULL,
    tarifa_base DECIMAL(10,2) NOT NULL,
    tarifa_dinamica DECIMAL(10,2) NOT NULL,
    impuestos DECIMAL(10,2) NOT NULL,
    propina DECIMAL(10,2) DEFAULT 0.00,
    total_pagado DECIMAL(10,2) NOT NULL,
    ganancia_uber DECIMAL(10,2) NOT NULL,
    viaje_completado BOOLEAN NOT NULL,
    viaje_cancelado BOOLEAN NOT NULL,

    FOREIGN KEY (tiempo_id)
        REFERENCES dim_tiempo(tiempo_id)
        ON DELETE SET NULL
        ON UPDATE CASCADE,

    FOREIGN KEY (ubicacion_id)
        REFERENCES dim_ubicacion(ubicacion_id)
        ON DELETE SET NULL
        ON UPDATE CASCADE,

    FOREIGN KEY (pago_id)
        REFERENCES dim_pago(pago_id)
        ON DELETE SET NULL
        ON UPDATE CASCADE
);