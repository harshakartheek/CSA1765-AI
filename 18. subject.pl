student_teacher_subject("Alice", "Mr. Smith", "Mathematics", "MATH101").
student_teacher_subject("Bob", "Mrs. Johnson", "Physics", "PHYS201").
student_teacher_subject("Charlie", "Mr. Smith", "Mathematics", "MATH101").
student_teacher_subject("Diana", "Dr. Brown", "Chemistry", "CHEM301").
student_teacher_subject("Eve", "Mrs. Johnson", "Physics", "PHYS201").
teacher_for_student(Student, Teacher) :-
    student_teacher_subject(Student, Teacher, _, _).
subject_for_student(Student, Subject, SubjectCode) :-
    student_teacher_subject(Student, _, Subject, SubjectCode).
students_of_teacher(Teacher, Student) :-
    student_teacher_subject(Student, Teacher, _, _).
students_of_subject(Subject, Student) :-
    student_teacher_subject(Student, _, Subject, _).
