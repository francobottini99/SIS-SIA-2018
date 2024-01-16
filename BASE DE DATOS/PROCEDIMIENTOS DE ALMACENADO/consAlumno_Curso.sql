CREATE DEFINER=`root`@`localhost` PROCEDURE `consAlumno_Curso`(
	in aIdCurso int(11),
    in aIdCl int(11)
)
BEGIN
	SELECT
		Alumnos.idAlumnos,
        Alumnos.Nombre,
        Alumnos.Sexo,
        Alumnos.idHuella_Digital,
        Alumnos.Modelo_Huella,
        Alumnos.Estado,
        Curso.idCurso,
        Curso.Año,
        Curso.Division,
        Alumnos.CicloLectivo_idCiclo_Lectivo,
        Alumnos.Usuarios_idUsuarios
	FROM
		Alumnos JOIN Curso ON Alumnos.Curso_idCurso = Curso.idCurso
	WHERE
        Alumnos.Curso_idCurso = aIdCurso AND Alumnos.CicloLectivo_idCiclo_Lectivo = aIdCl;
END