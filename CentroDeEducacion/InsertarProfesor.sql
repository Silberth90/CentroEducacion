
--EXEC InsertarProfesor '69564668', 'mauro', 'depiziola','programacion','peron al 2400', '1976-02-14'

CREATE PROCEDURE InsertarProfesor
	@DNI CHAR(10),
	@Nombre VARCHAR(50),
	@Apellido VARCHAR(50),
	@Especialidad VARCHAR(50),
	@Direccion VARCHAR(50),
	@Fnacimiento DATE
AS
IF NOT EXISTS (SELECT * FROM Profesor WHERE DNI = @DNI)
BEGIN
	INSERT INTO Profesor(DNI,Nombre,Apellido,Especialidad,Direccion,Fnacimiento)
	VALUES(@DNI,@Nombre,@Apellido,@Especialidad,@Direccion,@Fnacimiento)
	
	PRINT 'EL PROFESOR SE AGREGO CORRECTAMENTE'
	RETURN
END
ELSE
BEGIN

	PRINT 'EL PROFESOR YA ESTA EN LA BASE DE DATOS'
	RETURN
END

--select * from profesor