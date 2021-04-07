package teamfp.dziennik.model;

import javax.persistence.*;
import java.util.List;

@Entity
public class Teacher extends User {

    @OneToMany
    private List<Subject> subjectList;

    @OneToMany
    private List<Classroom> classroomList;

    public Teacher() {
    }

    public Teacher(Long id, String firstName, String surname, String email, String password, List<Subject> subjectList, List<Classroom> classroomList) {
        super(id, firstName, surname, email, password);
        this.subjectList = subjectList;
        this.classroomList = classroomList;
    }
}
