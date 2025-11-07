CREATE TRIGGER trg_ValidarStockReactivo
ON Detalle_Orden_Reactivo
INSTEAD OF INSERT
AS
BEGIN
    SET NOCOUNT ON;

    INSERT INTO Detalle_Orden_Reactivo (Id_Orden, Id_Reactivo, Cantidad_Usada, Precio_Total)
    SELECT i.Id_Orden, i.Id_Reactivo, i.Cantidad_Usada, i.Precio_Total
    FROM inserted i
    INNER JOIN Inventario inv ON inv.Id_Reactivo = i.Id_Reactivo
    WHERE 
        -- Cantidad usada no supera el stock actual
        i.Cantidad_Usada <= inv.Stock_Actual
        -- y el stock restante no queda debajo del mínimo
        AND (inv.Stock_Actual - i.Cantidad_Usada) >= inv.Stock_Minimo;

    -- Actualizamos el inventario 
    UPDATE inv
    SET inv.Stock_Actual = inv.Stock_Actual - i.Cantidad_Usada,
        inv.Fecha_Actualizacion = GETDATE()
    FROM Inventario inv
    INNER JOIN inserted i ON inv.Id_Reactivo = i.Id_Reactivo
    INNER JOIN Detalle_Orden_Reactivo dor ON dor.Id_Orden = i.Id_Orden
		-- Nos ayuda a filtrar solo los reactivos afectados
        AND dor.Id_Reactivo = i.Id_Reactivo
        AND dor.Cantidad_Usada = i.Cantidad_Usada;
END;
GO
