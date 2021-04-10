package teamfp.dziennik.model;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.util.List;

@Setter
@Getter
@Entity
public class Student extends User {

    @ManyToOne
    private Classroom classroom;

    @OneToMany(mappedBy = "student")
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
