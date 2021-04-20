package teamfp.dziennik.model;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;
import java.util.List;

@NoArgsConstructor
@Getter
@Setter
@Entity
public class Student extends User {

    @ManyToOne
//	@JoinColumn(name = "CLASSROOM_ID", referencedColumnName = "ID")
    private Classroom classroom;

    @OneToMany(mappedBy = "student")
    private List<Subject> subjectList;

    @ManyToOne
//	@JoinColumn(name = "PARENT_ID", referencedColumnName = "ID")
    private Parent parent;

	public Student(Long id,
				   String firstName,
				   String lastName,
				   String email,
				   String password,
				   Classroom classroom,
				   List<Subject> subjectList,
				   Parent parent) {
	}
}
