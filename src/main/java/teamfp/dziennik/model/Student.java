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
    private Classroom classroom;

    @OneToMany(mappedBy = "student")
    private List<Subject> subjectList;

//    @JoinColumn(name = "parentId_fk")
    @ManyToOne
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
