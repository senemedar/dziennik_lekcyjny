package teamfp.dziennik.model;

import lombok.NoArgsConstructor;
import teamfp.dziennik.model.enums.Presence;

import javax.persistence.*;
import java.util.Date;

@NoArgsConstructor
@Entity
public class Attendance {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;

	@OneToOne
//	@JoinColumn(name = "SUBJECT_ID", referencedColumnName = "ID")
	private Subject subject;

	private Presence presence;
	private Date attendanceDate;

}
