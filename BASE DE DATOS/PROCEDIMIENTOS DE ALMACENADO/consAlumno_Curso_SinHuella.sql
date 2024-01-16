CREATE DEFINER=`root`@`localhost` PROCEDURE `consAlumno_Curso_SinHuella`(
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
        Curso.idCurso = aIdCurso AND Alumnos.idHuella_Digital = 0 AND Alumnos.CicloLectivo_idCiclo_Lectivo = aIdCl;
END