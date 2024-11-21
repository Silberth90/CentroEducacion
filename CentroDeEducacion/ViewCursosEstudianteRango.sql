/*CREATE VIEW CursosEstudianteRango AS
SELECT C.Nombre AS Curso,I.f_inscripcion
FROM Inscripciones I
JOIN Curso C ON I.id_Curso = C.idCurso*/


/*WHERE I.DNI_Estudiante = @DNI_Estudiante
 AND I.f_inscripcion BETWEEN @FechaInicio AND @FechaFin*/


 CREATE VIEW TotalPagosEstudiantes AS
 SELECT  SUM(P.Monto) AS TotalPagos
 FROM Pagos P
 WHERE P.DNI_Estudiante = @DNI_Estudiante;