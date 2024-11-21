

CREATE PROCEDURE RegistrarPago
	@DNI_Estudiante CHAR(10),
	@id_inscripcion INT,
	@Monto DECIMAL(10,2),
	@FechaPago DATE
AS

BEGIN
	INSERT INTO Pagos(DNI_Estudiante,id_inscripcion,Monto,FechaPago)
	VALUES(@DNI_Estudiante,@id_inscripcion,@Monto,@FechaPago)

	PRINT 'EL PAGO SE A REALIZADO CON EXITO'
END
