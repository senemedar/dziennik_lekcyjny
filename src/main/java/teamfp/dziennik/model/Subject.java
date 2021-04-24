package teamfp.dziennik.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import teamfp.dziennik.model.enums.SubjectName;

import javax.persistence.*;
import java.util.Set;

@NoArgsConstructor
@AllArgsConstructor
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

    private String subjectName;

    public Subject(String subjectName) {
    	this.subjectName = subjectName;
	}

}
