CREATE TABLE `courses` (
  `courses_id` int NOT NULL AUTO_INCREMENT,
  `course_name` varchar(25) NOT NULL,
  `course_professor_id` int NOT NULL,
  `course_student_id` int NOT NULL,
  PRIMARY KEY (`courses_id`),
  UNIQUE KEY `courses_id_UNIQUE` (`courses_id`),
  KEY `course_professor_id_idx` (`course_professor_id`),
  KEY `course_student_id_idx` (`course_student_id`),
  CONSTRAINT `course_professor_id` FOREIGN KEY (`course_professor_id`) REFERENCES `professors` (`professor_id`),
  CONSTRAINT `course_student_id` FOREIGN KEY (`course_student_id`) REFERENCES `students` (`student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci

CREATE TABLE `grades` (
  `grade_id` int NOT NULL AUTO_INCREMENT,
  `grade_nota` int NOT NULL,
  `grade_estudent_name` varchar(25) NOT NULL,
  `grade_course_name` varchar(25) NOT NULL,
  `grade_profe_name` varchar(25) NOT NULL,
  PRIMARY KEY (`grade_id`),
  UNIQUE KEY `grade_id_UNIQUE` (`grade_id`),
  KEY `grade_estudent_id_idx` (`grade_estudent_name`),
  KEY `grade_profe_id_idx` (`grade_profe_name`),
  KEY `grade_course_id_idx` (`grade_course_name`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci

CREATE TABLE `professors` (
  `professor_id` int NOT NULL AUTO_INCREMENT,
  `professor_name` varchar(25) DEFAULT NULL,
  `professor_mail` varchar(25) NOT NULL,
  PRIMARY KEY (`professor_id`),
  UNIQUE KEY `id_courses_UNIQUE` (`professor_id`),
  UNIQUE KEY `professor_mail_UNIQUE` (`professor_mail`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci

CREATE TABLE `students` (
  `student_id` int NOT NULL AUTO_INCREMENT,
  `student_name` varchar(25) DEFAULT NULL,
  `student_mail` varchar(25) NOT NULL,
  PRIMARY KEY (`student_id`),
  UNIQUE KEY `id_student_UNIQUE` (`student_id`),
  UNIQUE KEY `studentscol_UNIQUE` (`student_mail`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci