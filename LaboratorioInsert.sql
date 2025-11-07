use Laboratorio;
go

INSERT INTO Rol (Nombre_Rol)
VALUES
('Investigador'),
('Tecnico'),
('Supervisor'),
('Administrador');


INSERT INTO Empleado (Primer_Nombre, Segundo_Nombre, Primer_Apellido, Segundo_Apellido, Documento, Telefono, Correo, Id_Rol)
VALUES
('Laura', 'Camila', 'Ramirez', 'Santos', '1001', '3201111111', 'laura.ramirez@lab.com', 1),
('Carlos', 'Andres', 'Gomez', 'Rios', '1002', '3202222222', 'carlos.gomez@lab.com', 1),
('Maria', NULL, 'Lopez', 'Torres', '1003', '3203333333', 'maria.lopez@lab.com', 2),
('Santiago', 'David', 'Perez', 'Moreno', '1004', '3204444444', 'santiago.perez@lab.com', 2),
('Valentina', 'Sofia', 'Diaz', 'Martinez', '1005', '3205555555', 'valentina.diaz@lab.com', 3),
('Jorge', NULL, 'Hernandez', 'Castro', '1006', '3206666666', 'jorge.hernandez@lab.com', 4),
('Angela', 'Lucia', 'Rojas', 'Cardenas', '1007', '3207777777', 'angela.rojas@lab.com', 1),
('Julian', NULL, 'Ortiz', 'Vargas', '1008', '3208888888', 'julian.ortiz@lab.com', 2),
('Daniela', 'Maria', 'Cortez', 'Salazar', '1009', '3209999999', 'daniela.cortez@lab.com', 3),
('Mateo', 'Alejandro', 'Reyes', 'Guerra', '1010', '3101111111', 'mateo.reyes@lab.com', 4),
('Sara', NULL, 'Mendez', 'Guerrero', '1011', '3102222222', 'sara.mendez@lab.com', 1),
('Juan', 'Sebastian', 'Vega', 'Rincon', '1012', '3103333333', 'juan.vega@lab.com', 2),
('Camila', 'Isabel', 'Morales', 'Leon', '1013', '3104444444', 'camila.morales@lab.com', 3),
('Luis', NULL, 'Navarro', 'Diaz', '1014', '3105555555', 'luis.navarro@lab.com', 2),
('Mariana', 'Fernanda', 'Cruz', 'Rico', '1015', '3106666666', 'mariana.cruz@lab.com', 4),
('Sofia', NULL, 'Torres', 'Mejia', '1016', '3107777777', 'sofia.torres@lab.com', 1),
('Andres', 'Felipe', 'Barrera', 'Lara', '1017', '3108888888', 'andres.barrera@lab.com', 2),
('Isabela', NULL, 'Ruiz', 'Mora', '1018', '3109999999', 'isabela.ruiz@lab.com', 3),
('Nicolas', 'David', 'Soto', 'Perez', '1019', '3001111111', 'nicolas.soto@lab.com', 4),
('Tatiana', NULL, 'Garcia', 'Hoyos', '1020', '3002222222', 'tatiana.garcia@lab.com', 1);

go
INSERT INTO Reactivo (Nombre, Formula_Quimica, Fecha_Vencimiento, Cantidad, Unidad, Precio)
VALUES
('�cido clorh�drico', 'HCl', '2027-01-15', 500, 'mL', 25.50),
('Sulfato de cobre', 'CuSO4', '2026-11-30', 250, 'g', 40.00),
('Etanol', 'C2H5OH', '2028-05-20', 1000, 'mL', 15.00),
('Acetona', 'C3H6O', '2026-06-18', 500, 'mL', 20.00),
('Hidr�xido de sodio', 'NaOH', '2027-02-01', 300, 'g', 30.00),
('Cloruro de sodio', 'NaCl', '2029-09-15', 1000, 'g', 12.00),
('Nitrato de plata', 'AgNO3', '2026-03-12', 100, 'g', 80.00),
('�cido n�trico', 'HNO3', '2026-08-25', 500, 'mL', 28.00),
('Sulfato de amonio', '(NH4)2SO4', '2027-04-04', 400, 'g', 18.00),
('Cloroformo', 'CHCl3', '2028-02-10', 250, 'mL', 35.00),
('Per�xido de hidr�geno', 'H2O2', '2026-07-07', 500, 'mL', 22.00),
('�cido ac�tico', 'CH3COOH', '2027-12-01', 500, 'mL', 26.00),
('Carbonato de calcio', 'CaCO3', '2030-03-10', 600, 'g', 10.00),
('Sulfato de zinc', 'ZnSO4', '2026-10-15', 200, 'g', 25.00),
('Cloruro f�rrico', 'FeCl3', '2028-06-06', 100, 'g', 45.00),
('�cido sulf�rico', 'H2SO4', '2029-09-09', 750, 'mL', 30.00),
('Amon�aco', 'NH3', '2027-01-30', 300, 'mL', 18.50),
('Tolueno', 'C7H8', '2028-11-11', 200, 'mL', 40.00),
('Hexano', 'C6H14', '2028-08-18', 500, 'mL', 27.00),
('Metanol', 'CH3OH', '2029-02-20', 1000, 'mL', 19.00);

go
INSERT INTO Equipo (Nombre_Equipo, Estado, Fecha_Ulti_Mantenimiento, Fecha_Prox_Mantenimiento)
VALUES
('Centr�fuga', 'Disponible', '2025-06-10', '2026-06-10'),
('Microscopio electr�nico', 'Mantenimiento', '2025-05-01', '2026-05-01'),
('Balanza anal�tica', 'Disponible', '2025-04-15', '2026-04-15'),
('Espectrofot�metro', 'Disponible', '2025-07-10', '2026-07-10'),
('Horno de secado', 'Disponible', '2025-02-20', '2026-02-20'),
('Agitador magn�tico', 'Disponible', '2025-03-25', '2026-03-25'),
('Campana extractora', 'Disponible', '2025-01-15', '2026-01-15'),
('pHmetro', 'Disponible', '2025-06-30', '2026-06-30'),
('Ba�o mar�a', 'Disponible', '2025-04-10', '2026-04-10'),
('Reactor qu�mico', 'Mantenimiento', '2025-03-01', '2026-03-01'),
('Congelador', 'Disponible', '2025-08-20', '2026-08-20'),
('Cromat�grafo', 'Da�ado', '2024-09-12', '2025-09-12'),
('Microscopio �ptico', 'Disponible', '2025-05-25', '2026-05-25'),
('Autoclave', 'Disponible', '2025-06-01', '2026-06-01'),
('Destilador', 'Mantenimiento', '2025-07-12', '2026-07-12'),
('Espectr�metro IR', 'Disponible', '2025-02-18', '2026-02-18'),
('Titulador autom�tico', 'Disponible', '2025-09-09', '2026-09-09'),
('Viscos�metro', 'Disponible', '2025-10-10', '2026-10-10'),
('Refrigerador', 'Disponible', '2025-05-05', '2026-05-05'),
('Compresor', 'Disponible', '2025-03-15', '2026-03-15');

go
INSERT INTO Nanomaterial (Nombre, Tipo, Descripcion)
VALUES
('Nanotubos de carbono', 'Carbono', 'Estructuras cil�ndricas de �tomos de carbono con alta conductividad.'),
('Nanopart�culas de oro', 'Met�lico', 'Part�culas esf�ricas utilizadas en biomedicina y cat�lisis.'),
('Nanopart�culas de plata', 'Met�lico', 'Usadas en materiales antibacterianos.'),
('Grafeno', 'Carbono', 'Capa bidimensional de �tomos de carbono con alta conductividad.'),
('Di�xido de titanio', '�xido', 'Usado en filtros solares y fotocat�lisis.'),
('Nanopart�culas de s�lice', '�xido', 'Aplicadas en recubrimientos y cosm�tica.'),
('Fullerenos', 'Carbono', 'Mol�culas esf�ricas de carbono.'),
('Nanopart�culas de hierro', 'Met�lico', 'Usadas en remediaci�n ambiental.'),
('Nanofibras de pol�mero', 'Polim�rico', 'Fibras ultrafinas para filtraci�n.'),
('Nanopart�culas de cobre', 'Met�lico', 'Antimicrobianas y conductoras.'),
('Nanopart�culas de zinc', '�xido', 'Usadas en protectores solares.'),
('Quantum dots', 'Semiconductor', 'Cristales para aplicaciones �pticas.'),
('Nanocelulosa', 'Polim�rico', 'Refuerzo ecol�gico para materiales.'),
('Nanopart�culas de n�quel', 'Met�lico', 'Usadas en cat�lisis.'),
('Nanopart�culas de aluminio', 'Met�lico', 'Alta reactividad.'),
('Nanocompuestos de arcilla', 'Compuesto', 'Mejoran propiedades mec�nicas.'),
('Nanopart�culas de plata recubiertas', 'Compuesto', 'Mayor estabilidad t�rmica.'),
('Nanotubos dopados', 'Carbono', 'Aumentan la reactividad el�ctrica.'),
('Nanoesferas de s�lice', '�xido', 'Alta �rea superficial.'),
('Nanohilos de oro', 'Met�lico', 'Usados en sensores electr�nicos.');

go 
INSERT INTO Inventario (Id_Reactivo, Ubicacion, Stock_Actual, Stock_Minimo)
VALUES
(1, 'Estante A1', 480, 100),
(2, 'Estante A2', 240, 50),
(3, 'Estante B1', 950, 200),
(4, 'Estante B2', 470, 100),
(5, 'Estante C1', 290, 50),
(6, 'Estante C2', 980, 150),
(7, 'Estante D1', 90, 20),
(8, 'Estante D2', 480, 100),
(9, 'Estante E1', 380, 80),
(10, 'Estante E2', 240, 50),
(11, 'Estante F1', 460, 100),
(12, 'Estante F2', 470, 100),
(13, 'Estante G1', 580, 150),
(14, 'Estante G2', 180, 50),
(15, 'Estante H1', 80, 20),
(16, 'Estante H2', 730, 150),
(17, 'Estante I1', 280, 50),
(18, 'Estante I2', 190, 50),
(19, 'Estante J1', 480, 100),
(20, 'Estante J2', 980, 200);
GO

INSERT INTO Orden_Sintesis (Fecha_Creacion, Id_Empleado, Id_Nanomaterial, Estado)
VALUES
('2025-10-01', 1, 1, 'Pendiente'),
('2025-10-03', 2, 2, 'Proceso'),
('2025-10-05', 3, 3, 'Finalizada'),
('2025-10-07', 4, 4, 'Pendiente'),
('2025-10-09', 5, 5, 'Aprobada'),
('2025-10-11', 6, 6, 'Rechazada'),
('2025-10-13', 7, 7, 'Pendiente'),
('2025-10-15', 8, 8, 'Proceso'),
('2025-10-17', 9, 9, 'Control de calidad'),
('2025-10-19', 10, 10, 'Pendiente'),
('2025-10-21', 11, 11, 'Pendiente'),
('2025-10-23', 12, 12, 'Aprobada'),
('2025-10-25', 13, 13, 'Pendiente'),
('2025-10-27', 14, 14, 'Proceso'),
('2025-10-29', 15, 15, 'Rechazada'),
('2025-10-31', 16, 16, 'Pendiente'),
('2025-11-02', 17, 17, 'Control de calidad'),
('2025-11-04', 18, 18, 'Pendiente'),
('2025-11-06', 19, 19, 'Aprobada'),
('2025-11-08', 20, 20, 'Pendiente');

GO

INSERT INTO Detalle_Orden_Reactivo (Id_Orden, Id_Reactivo, Cantidad_Usada, Precio_Total)
VALUES
(1, 1, 20.5, 2050),
(2, 3, 35.0, 3500),
(3, 5, 10.0, 1000),
(4, 2, 15.0, 1500),
(5, 4, 18.0, 1800),
(6, 6, 25.0, 2500),
(7, 7, 5.0, 500),
(8, 8, 30.0, 3000),
(9, 9, 12.0, 1200),
(10, 10, 8.0, 800),
(11, 11, 22.0, 2200),
(12, 12, 14.0, 1400),
(13, 13, 16.0, 1600),
(14, 14, 19.0, 1900),
(15, 15, 21.0, 2100),
(16, 16, 17.0, 1700),
(17, 17, 13.0, 1300),
(18, 18, 20.0, 2000),
(19, 19, 18.5, 1850),
(20, 20, 25.0, 2500);


GO

INSERT INTO Mantenimiento (Id_Equipo, Fecha_Mantenimiento, Tipo, Descripcion, Id_Empleado)
VALUES
(1, '2025-06-10', 'Preventivo', 'Limpieza y calibraci�n general.', 3),
(2, '2025-05-01', 'Correctivo', 'Reparaci�n del sistema �ptico.', 4),
(3, '2025-04-15', 'Preventivo', 'Revisi�n de calibraci�n.', 5),
(4, '2025-07-10', 'Preventivo', 'Verificaci�n de l�mpara UV.', 6),
(5, '2025-02-20', 'Correctivo', 'Cambio de resistencias internas.', 7),
(6, '2025-03-25', 'Preventivo', 'Mantenimiento de motor magn�tico.', 8),
(7, '2025-01-15', 'Preventivo', 'Revisi�n de filtros.', 9),
(8, '2025-06-30', 'Preventivo', 'Calibraci�n de electrodos.', 10),
(9, '2025-04-10', 'Preventivo', 'Cambio de termostato.', 11),
(10, '2025-03-01', 'Correctivo', 'Cambio de v�lvula principal.', 12),
(11, '2025-08-20', 'Preventivo', 'Limpieza general.', 13),
(12, '2024-09-12', 'Correctivo', 'Reparaci�n del inyector de gas.', 14),
(13, '2025-05-25', 'Preventivo', 'Calibraci�n del enfoque.', 15),
(14, '2025-06-01', 'Preventivo', 'Prueba de presi�n de vapor.', 16),
(15, '2025-07-12', 'Correctivo', 'Cambio de sensor �ptico.', 17),
(16, '2025-02-18', 'Preventivo', 'Verificaci�n de se�ales IR.', 18),
(17, '2025-09-09', 'Preventivo', 'Revisi�n de electrodos.', 19),
(18, '2025-10-10', 'Correctivo', 'Cambio de sensor de viscosidad.', 20),
(19, '2025-05-05', 'Preventivo', 'Revisi�n de refrigerante.', 1),
(20, '2025-03-15', 'Correctivo', 'Reemplazo de v�lvulas.', 2);
GO

INSERT INTO Control_Calidad (Id_Orden, Resultado, Aprobado)
VALUES
(1, 'Aprobado por estabilidad del material', 1),
(2, 'En revisi�n por impurezas detectadas', 0),
(3, 'Aprobado sin observaciones', 1),
(4, 'Rechazado por contaminaci�n cruzada', 0),
(5, 'Aprobado dentro de los par�metros', 1),
(6, 'Rechazado por fallas en la pureza', 0),
(7, 'En proceso de verificaci�n', 0),
(8, 'Aprobado, resultados reproducibles', 1),
(9, 'Rechazado, estructura inestable', 0),
(10, 'Aprobado, validaci�n espectrosc�pica completa', 1),
(11, 'Aprobado con ligeras observaciones', 1),
(12, 'Aprobado, sin desviaciones significativas', 1),
(13, 'Rechazado, fallas en el control t�rmico', 0),
(14, 'En revisi�n, an�lisis complementario requerido', 0),
(15, 'Rechazado por desviaci�n de tama�o de part�cula', 0),
(16, 'Aprobado tras segunda verificaci�n', 1),
(17, 'En revisi�n por dudas en la pureza', 0),
(18, 'Aprobado con excelente rendimiento', 1),
(19, 'Rechazado por error en el protocolo', 0),
(20, 'Aprobado y liberado para almacenamiento', 1);
GO

INSERT INTO Auditoria_Inventario (Id_Reactivo, Operacion, Valor_Anterior, Valor_Nuevo, Id_Empleado)
VALUES
(1, 'Salida', 500, 480, 1),
(2, 'Salida', 250, 240, 2),
(3, 'Entrada', 900, 950, 3),
(4, 'Salida', 500, 470, 4),
(5, 'Salida', 300, 290, 5),
(6, 'Entrada', 950, 980, 6),
(7, 'Salida', 100, 90, 7),
(8, 'Salida', 500, 480, 8),
(9, 'Salida', 400, 380, 9),
(10, 'Salida', 250, 240, 10),
(11, 'Entrada', 440, 460, 11),
(12, 'Entrada', 450, 470, 12),
(13, 'Salida', 600, 580, 13),
(14, 'Salida', 200, 180, 14),
(15, 'Salida', 100, 80, 15),
(16, 'Entrada', 700, 730, 16),
(17, 'Salida', 300, 280, 17),
(18, 'Salida', 200, 190, 18),
(19, 'Salida', 500, 480, 19),
(20, 'Entrada', 950, 980, 20);
GO

select *from Auditoria_Inventario
select *from Control_Calidad
select *from Detalle_Orden_Reactivo
select *from Empleado
select *from Equipo
select *from Inventario
select *from Mantenimiento
select *from Nanomaterial
select *from Orden_Sintesis
select *from Reactivo
select *from Rol