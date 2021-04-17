package teamfp.dziennik.model;

import lombok.NoArgsConstructor;
import teamfp.dziennik.model.enums.Presence;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import java.util.Date;

@NoArgsConstructor
@Entity
public class Attendance {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;

	private Presence presence;
	private Date attendanceDate;

}
