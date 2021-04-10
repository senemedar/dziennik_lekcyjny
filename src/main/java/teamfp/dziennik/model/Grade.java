package teamfp.dziennik.model;

import teamfp.dziennik.model.enums.GradeValue;

import javax.persistence.*;
import java.util.Date;

@Entity
public class Grade {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    @ManyToOne
    private Subject subject;

    private GradeValue gradeValue;
    private String comment;
    private Date gradeDate;
}
