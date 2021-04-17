package teamfp.dziennik.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;
import java.util.List;

@NoArgsConstructor
@Getter
@Setter
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

	public Classroom(Long id,
					 String classroomName,
					 List<Student> studentList,
					 Teacher classroomTeacher) {
	}
}
