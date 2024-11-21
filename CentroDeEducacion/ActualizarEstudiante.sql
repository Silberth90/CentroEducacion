

CREATE PROCEDURE ActualizarEstudiante
	@DNI CHAR(10),
	@Nombre VARCHAR(50),
	@Apellido VARCHAR(50),
	@Direccion VARCHAR(100),
	@Fnacimiento DATE
AS
BEGIN
	UPDATE Estudiante
	SET Nombre = @Nombre,Apellido = @Apellido,Direccion = @Direccion,Fnacimiento = @Fnacimiento
	WHERE DNI = @DNI
END
