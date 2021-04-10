package teamfp.dziennik.model;

import javax.persistence.*;
import java.util.List;

@Entity
public class Classroom {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    private String classroomName;

    @OneToMany
    private List<Student> studentList;

    @ManyToOne
    private Teacher classroomTeacher;
}
