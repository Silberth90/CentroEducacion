

CREATE PROCEDURE ActulizarProfesor
	@DNI CHAR(10),
	@Nombre VARCHAR(50),
	@Apellido VARCHAR(50),
	@Especialidad VARCHAR(50)
	
AS
BEGIN
	UPDATE Profesor
	SET Nombre = @Nombre,Apellido = @Apellido,Especialidad = @Especialidad
	WHERE DNI = @DNI
END