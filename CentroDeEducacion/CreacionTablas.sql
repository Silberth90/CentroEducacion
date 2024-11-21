/*CREATE TABLE Estudiante (
					DNI CHAR(10) PRIMARY KEY,
					Nombre VARCHAR(50) NOT NULL,
					Apellido VARCHAR(50) NOT NULL,
					Direccion VARCHAR(50) NULL,
					Fnacimiento DATE,
				
)*/

/*CREATE TABLE Profesor(
					DNI CHAR(10) PRIMARY KEY,
					Nombre VARCHAR(50) NOT NULL,
					Apellido VARCHAR(50) NOT NULL,
					Especialidad VARCHAR(50) NOT NULL,
					Direccion VARCHAR(50) NULL,
					Fnacimiento DATE
)*/

/*CREATE TABLE Curso(
				idCurso INT PRIMARY KEY IDENTITY,
				Nombre VARCHAR(100)NOT NULL,
				Descripcion TEXT,
				Horario VARCHAR(50),
		
)*/

/*CREATE TABLE Inscripciones(
						id_inscripcion INT PRIMARY KEY IDENTITY,
						DNI_Estudiante CHAR(10) FOREIGN KEY REFERENCES Estudiante(DNI),
						id_Curso INT FOREIGN KEY REFERENCES Curso(idCurso),
						f_inscripcion DATE,
)*/

/*CREATE TABLE Pagos(
				id_pago INT PRIMARY KEY IDENTITY,
				DNI_Estudiante CHAR(10) FOREIGN KEY REFERENCES Estudiante(DNI),
				id_inscripcion INT FOREIGN KEY REFERENCES Inscripciones(id_inscripcion),
				Monto DECIMAL(10,2),
				FechaPago DATE,
)*/

/*CREATE TABLE CursoProfesor(
					DNI_Profesor CHAR(10) FOREIGN KEY REFERENCES Profesor(DNI),
					id_curso INT FOREIGN KEY REFERENCES Curso(idCurso),
					PRIMARY KEY (DNI_Profesor,id_Curso)
)*/