
--EXEC InsertarCurso 'Soldador','van a aprender como soldar las diferentes tamaños de hierro','12 pm a 20 pm'

CREATE PROCEDURE InsertarCurso
	@Nombre VARCHAR(100),
	@Descripcion TEXT,
	@Horario VARCHAR(50)
AS
IF NOT EXISTS(SELECT * FROM Curso WHERE Nombre = @Nombre)
BEGIN
	INSERT INTO Curso(Nombre,Descripcion,Horario)
	VALUES(@Nombre,@Descripcion,@Horario)

	PRINT 'EL CURSO SE AGREGO CORRECTAMENTE'
	RETURN
END
ELSE
BEGIN
	PRINT 'EL CURSO YA ESTA EN LA LISTA'
	RETURN
END