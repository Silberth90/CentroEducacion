CREATE PROCEDURE ConsultarInscripciones
	@DNI_Estudiante CHAR(10)
AS
BEGIN
	SELECT C.Nombre AS Curso, I.f_inscripcion
	FROM Inscripciones I
	JOIN Curso C ON I.id_Curso = C.idCurso
	WHERE I.DNI_Estudiante = @DNI_Estudiante
END
