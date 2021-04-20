package teamfp.dziennik.model;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.Entity;
import javax.persistence.OneToMany;
import javax.persistence.OrderBy;
import java.util.List;
import java.util.Set;

@NoArgsConstructor
@Getter
@Setter
@Entity
public class Parent extends User {

    @OneToMany(mappedBy = "parent")
//    @OrderBy("lastName")
    private List<Student> studentList;

}
