package teamfp.dziennik.model;

import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import java.util.List;

@Entity
public class Student extends User {

    @ManyToOne
    private Classroom classroom;

    @OneToMany(mappedBy = "subject")
    private List<Subject> subjectList;

//    @JoinColumn(name = "parentId_fk")
    @ManyToOne
    private Parent parent;

    public Student() {
    }

    public Student(Long id, String firstName, String surname, String email, String password, Classroom classroom, List<Subject> subjectList, Parent parent) {
        super(id, firstName, surname, email, password);
        this.classroom = classroom;
        this.subjectList = subjectList;
        this.parent = parent;
    }
}
