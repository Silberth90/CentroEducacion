

--SELECT * FROM Inscripciones
--EXEC InsertarInscripcion '58896268','1','12-03-2024'

CREATE PROCEDURE InsertarInscripcion
	@DNI_Estudiante CHAR(10),
	@id_Curso INT,
	@f_inscripcion DATE
AS
BEGIN
	INSERT INTO Inscripciones(DNI_Estudiante,id_Curso,f_inscripcion)
	VALUES (@DNI_Estudiante,@id_Curso,@f_inscripcion)
END