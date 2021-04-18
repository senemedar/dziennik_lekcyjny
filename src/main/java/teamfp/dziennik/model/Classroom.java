package teamfp.dziennik.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;
import java.util.ArrayList;
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

    @OneToMany(mappedBy = "classroom")
    private List<Student> studentList;

    @ManyToOne
//	@JoinColumn(name = "TEACHER_ID", referencedColumnName = "ID")
    private Teacher teacher;

	public Classroom(Long id,
					 String classroomName,
					 List<Student> studentList,
					 Teacher teacher) {
	}
}
