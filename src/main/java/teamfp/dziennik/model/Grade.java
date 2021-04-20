package teamfp.dziennik.model;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import teamfp.dziennik.model.enums.GradeValue;

import javax.persistence.*;
import java.util.Date;

@NoArgsConstructor
@Getter
@Setter
@Entity
public class Grade {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    @ManyToOne
//	@JoinColumn(name = "SUBJECT_ID", referencedColumnName = "ID")
    private Subject subject;

    private GradeValue gradeValue;
    private String comment;
    private Date gradeDate;

}
