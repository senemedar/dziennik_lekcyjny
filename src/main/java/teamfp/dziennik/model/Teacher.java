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
public class Teacher extends User {

    @OneToMany(mappedBy = "teacher")
    private List<Subject> subjectList;

    @OneToMany(mappedBy = "teacher")
    private List<Classroom> classroomList;

	public Teacher(
			Long id,
			String firstName,
			String lastName,
			String email,
			String password,
			List<Subject> subjectList,
			List<Classroom> classroomList) {
	}

}
