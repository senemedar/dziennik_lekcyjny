package teamfp.dziennik.model;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import teamfp.dziennik.model.enums.SubjectName;

import javax.persistence.*;
import java.util.Set;

@NoArgsConstructor
@Getter
@Setter
@Entity
public class Subject {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

	@OneToMany(mappedBy = "subject")
    private Set<Grade> gradeList;

    @ManyToOne
//	@JoinColumn(name = "STUDENT_ID", referencedColumnName = "ID")
    private Student student;

    @ManyToOne
//	@JoinColumn(name = "TEACHER_ID", referencedColumnName = "ID")
    private Teacher teacher;

    @OneToOne(mappedBy = "subject")
    private Attendance attendance;

    private SubjectName subjectName;

}
