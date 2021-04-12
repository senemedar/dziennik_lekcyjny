package teamfp.dziennik.model;

import teamfp.dziennik.model.enums.SubjectName;

import javax.persistence.*;
import java.util.Set;

@Entity
public class Subject {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    @OneToMany(mappedBy = "subject")
    private Set<Grade> gradeList;

    @ManyToOne
    private Student student;

    @ManyToOne
    private Teacher teacher;

    @OneToOne
    private Attendance attendance;

    private SubjectName subjectName;

    public Subject() {
    }

    public Subject(Long id, Set<Grade> gradeList, Student student, Teacher teacher, Attendance attendance, SubjectName subjectName) {
        this.id = id;
        this.gradeList = gradeList;
        this.student = student;
        this.teacher = teacher;
        this.attendance = attendance;
        this.subjectName = subjectName;
    }
}
