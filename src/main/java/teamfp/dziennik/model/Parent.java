package teamfp.dziennik.model;

import javax.persistence.Entity;
import javax.persistence.OneToMany;
import javax.persistence.OrderBy;
import java.util.List;
import java.util.Set;

@Entity
public class Parent extends User {

    @OneToMany(mappedBy = "parent")
    @OrderBy("lastName")
    private List<Student> studentList;

    public Parent() {
    }

    public Parent(Long id, String firstName, String surname, String email, String password, List<Student> studentList) {
        super(id, firstName, surname, email, password);
        this.studentList = studentList;
    }
}
