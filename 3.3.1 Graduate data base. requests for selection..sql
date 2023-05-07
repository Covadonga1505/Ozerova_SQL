CREATE TABLE department(
department_id INT PRIMARY KEY AUTO_INCREMENT,
name_department VARCHAR(30));
INSERT department(name_department)
VALUES
('Инженерная школа'),
('Школа естественных наук');
SELECT*FROM department;


CREATE TABLE subject(
subject_id INT PRIMARY KEY AUTO_INCREMENT,
name_subject VARCHAR(30));
INSERT subject(name_subject)
VALUES
('Русский язык'),
('Математика'),
('Физика'),
('Информатика');
SELECT*FROM subject;


CREATE TABLE program(
program_id INT PRIMARY KEY AUTO_INCREMENT,
name_program VARCHAR(50),
department_id INT,
FOREIGN KEY(department_id) REFERENCES department(department_id) ON DELETE CASCADE,
plan INT);
INSERT program(name_program, department_id, plan)
VALUES
('Прикладная математика и информатика','2','2'),
('Математика и компьютерные науки','2','1'),
('Прикладная механика','1','2'),
('Мехатроника и робототехника','1','3');
SELECT*FROM program;


CREATE TABLE enrollee(
enrollee_id INT PRIMARY KEY AUTO_INCREMENT,
name_enrollee VARCHAR(50));
INSERT enrollee(name_enrollee)
VALUES
('Баранов Павел'),
('Абрамова Катя'),
('Семенов Иван'),
('Яковлева Галина'),
('Попов Илья'),
('Степанова Дарья');
SELECT*FROM enrollee;


CREATE TABLE achievement(
achievement_id INT PRIMARY KEY AUTO_INCREMENT,
name_achievement VARCHAR(30),
bonus INT);
INSERT achievement(name_achievement, bonus)
VALUES
('Золотая медаль','5'),
('Серебряная медаль','3'),
('Золотой значок ГТО','3'),
('Серебряный значок ГТО','1');
SELECT*FROM achievement;


CREATE TABLE enrollee_achievement(
enrollee_achievement_id INT PRIMARY KEY AUTO_INCREMENT,
enrollee_id INT,
FOREIGN KEY(enrollee_id) REFERENCES enrollee(enrollee_id) ON DELETE CASCADE,
achievement_id INT,
FOREIGN KEY(achievement_id) REFERENCES achievement(achievement_id) ON DELETE CASCADE);
INSERT enrollee_achievement(enrollee_id, achievement_id)
VALUES
('1','2'),
('1','3'),
('3','1'),
('4','4'),
('5','1'),
('5','3');
SELECT*FROM enrollee_achievement;


CREATE TABLE program_subject(
program_subject_id INT PRIMARY KEY AUTO_INCREMENT,
program_id INT,
FOREIGN KEY(program_id) REFERENCES program(program_id) ON DELETE CASCADE,
subject_id INT,
FOREIGN KEY(subject_id) REFERENCES subject(subject_id) ON DELETE CASCADE,
min_result INT);
INSERT program_subject(program_id, subject_id, min_result)
VALUES
('1','1','40'),
('1','2','50'),
('1','4','60'),
('2','1','30'),
('2','2','50'),
('2','4','60'),
('3','1','30'),
('3','2','45'),
('3','3','45'),
('4','1','40'),
('4','2','45'),
('4','3','45');
SELECT*FROM program_subject;


CREATE TABLE program_enrollee(
program_enrollee_id INT PRIMARY KEY AUTO_INCREMENT,
program_id INT,
FOREIGN KEY(program_id) REFERENCES program(program_id) ON DELETE CASCADE,
enrollee_id INT,
FOREIGN KEY(enrollee_id) REFERENCES enrollee(enrollee_id) ON DELETE CASCADE);
INSERT program_enrollee(program_id, enrollee_id)
VALUES
('3','1'),
('4','1'),
('1','1'),
('2','2'),
('1','2'),
('1','3'),
('2','3'),
('4','3'),
('3','4'),
('3','5'),
('4','5'),
('2','6'),
('3','6'),
('4','6');
SELECT*FROM program_enrollee;


CREATE TABLE enrollee_subject(
enrollee_subject_id INT PRIMARY KEY AUTO_INCREMENT,
enrollee_id INT,
FOREIGN KEY(enrollee_id) REFERENCES enrollee(enrollee_id) ON DELETE CASCADE,
subject_id INT,
FOREIGN KEY(subject_id) REFERENCES subject(subject_id) ON DELETE CASCADE,
result INT);
INSERT enrollee_subject(enrollee_id, subject_id, result)
VALUES
('1','1','68'),
('1','2','70'),
('1','3','41'),
('1','4','75'),
('2','1','75'),
('2','2','70'),
('2','4','81'),
('3','1','85'),
('3','2','67'),
('3','3','90'),
('3','4','78'),
('4','1','82'),
('4','2','86'),
('4','3','70'),
('5','1','65'),
('5','2','67'),
('5','3','60'),
('6','1','90'),
('6','2','92'),
('6','3','88'),
('6','4','94');
SELECT*FROM enrollee_subject;
