CREATE TRIGGER trg_UpdateEquipoOnMantenimiento
ON Mantenimiento
AFTER INSERT
AS
BEGIN
    SET NOCOUNT ON;

    UPDATE e
    SET 
        e.Estado = 
            CASE i.Tipo
                WHEN 'Preventivo' THEN 'Disponible'
                WHEN 'Correctivo' THEN 'Mantenimiento'
                WHEN 'Reparación' THEN 'Dañado'
                ELSE e.Estado      -- Por si llega otro tipo
            END,
        e.Fecha_Ulti_Mantenimiento = i.Fecha_Mantenimiento,
        -- DATEADD(intervalo, cantidad, fecha)
        e.Fecha_Prox_Mantenimiento = DATEADD(MONTH, 6, i.Fecha_Mantenimiento)
    FROM Equipo e
    INNER JOIN inserted i ON e.Id_Equipo = i.Id_Equipo;
END;
GO
