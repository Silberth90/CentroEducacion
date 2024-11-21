
--EXEC InsertarEstudiante '58896268', 'lautaro', 'Paz', 'almagro 1555', '1990-01-01'


CREATE PROCEDURE InsertarEstudiante
	@DNI CHAR(10),
	@Nombre VARCHAR(50),
	@Apellido VARCHAR(50),
	@Direccion VARCHAR(100),
	@Fnacimiento DATE
AS  
--declaracion if para ferifica si no hay un estudiante con el mismo DNI
IF NOT EXISTS(SELECT * FROM Estudiante WHERE dni = @dni)
BEGIN
	INSERT INTO Estudiante(DNI,Nombre,Apellido,Direccion,Fnacimiento)
	VALUES (@DNI,@Nombre,@Apellido,@Direccion,@Fnacimiento)

	print'el estudiante se agrego correctamente'
	RETURN
END
ELSE
BEGIN

PRINT 'el estudiante ya se encuentra en la base de datos'
RETURN
END
